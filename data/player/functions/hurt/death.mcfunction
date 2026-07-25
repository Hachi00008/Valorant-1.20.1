#> player:hurt/death
#
# 死んだ時の処理
#
# @within function player:hurt/

# 殺した人の武器のダメージを取得
    execute store result score @s AttackerWeaponDamage on attacker run data get entity @s SelectedItem.tag.GunDamage 10

    #scoreboard players operation @s TakenDamage /= #10 Constant

# メッセージ
    execute on attacker run title @s times 0 20 10
    execute on attacker run title @s title ""
    execute if score @s AttackerWeaponDamage >= @s TakenDamage on attacker run title @s subtitle [{"text": "\uE000","font": "ui","color": "white"}]
    execute if score @s AttackerWeaponDamage < @s TakenDamage on attacker run title @s subtitle [{"text": "\uE001","font": "ui","color": "white"}]

    execute on attacker at @s run function player:kill/

    execute on attacker run tellraw @a [{"selector": "@s"},{"text": " ---> "},{"selector": "@a[distance=..0.1,limit=1]"}]

# タグ
    tag @s add Dead

# デバッグ
    #tellraw @a [{"text": "TakenDamage: "},{"score": {"name": "@s","objective": "TakenDamage"}},{"text": " | AttackerWeaponDamage: "},{"score": {"name": "@s","objective": "AttackerWeaponDamage"}}]

# チーム数監視
    function game_core:game_tick/battle_phase/team_player

# リセット
    #scoreboard players set @s TakenDamage 0