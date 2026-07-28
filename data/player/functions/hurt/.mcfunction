#> player:hurt/
#
# プレイヤーがダメージを喰らった際の処理
#
# @within advancements player:player_hurt

# 進捗リセット
    advancement revoke @s only player:player_hurt

# 回復
    effect give @s instant_health 1 50 true

# キューがあるならreturnして終了
    execute if score @s HurtCount matches 1 run return 0

# スコアの処理
    #scoreboard players add @s HurtCount 1
    #execute on attacker if data entity @s SelectedItem.tag.MeleeWeaponId run scoreboard players add @a[distance=..0.1,limit=1] HurtCount 1
    #execute on attacker if data entity @s SelectedItem.tag{GunId:"valorant:operator"} run scoreboard players add @a[distance=..0.1,limit=1] HurtCount 1

# ダメージ処理
    scoreboard players operation @s HurtTakenDamage = @s TakenDamage
    scoreboard players operation @s HurtTakenDamage /= #10 Constant
    scoreboard players operation @s HurtTakenDamage *= #10 Constant

    # シールド処理前の確認(デバッグ)
        #tellraw @a ["",{"text": "[Before] Hurt="},{"score": {"name": "@s","objective": "HurtTakenDamage"}},{"text": " Shield="},{"score": {"name": "@s","objective": "Shield"}},{"text": " Health="},{"score": {"name": "@s","objective": "Health"}}]

    # シールドの処理
        execute if score @s Shield matches 1.. run function player:hurt/remove_shield/

    # シールド処理後の確認(デバッグ)
        #tellraw @a ["",{"text": "[After] Hurt="},{"score": {"name": "@s","objective": "HurtTakenDamage"}},{"text": " Shield="},{"score": {"name": "@s","objective": "Shield"}},{"text": " Health="},{"score": {"name": "@s","objective": "Health"}}]

    # 体力の処理
        execute if score @s HurtTakenDamage matches 1.. run scoreboard players operation @s Health -= @s HurtTakenDamage

    # 体力処理後の確認(デバッグ)
        #tellraw @a ["",{"text": "[Final] Hurt="},{"score": {"name": "@s","objective": "HurtTakenDamage"}},{"text": " Shield="},{"score": {"name": "@s","objective": "Shield"}},{"text": " Health="},{"score": {"name": "@s","objective": "Health"}}]
        
# キューの追加
    scoreboard players set @s HurtCount 1

# ダメージ処理
    execute if score @s Health matches ..0 on attacker run damage @a[distance=..0.1,limit=1] 2000 lib:gun_damage by @s

# 仮
    execute if score @s Health matches ..0 run gamemode spectator @s

# 死んだ時の処理
    execute if score @s Health matches ..0 run function player:hurt/death



# リセット
    execute if score @s TakenDamage matches 1.. run scoreboard players set @s TakenDamage 0
    execute if score @s HurtCount matches 2.. run scoreboard players set @s HurtCount 0
    scoreboard players set @s AttackerWeaponDamage 0
    