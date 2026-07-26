#> core:load/once
#
# 一度だけ実行されるLoad Function
#
# @within function core:load/

# フレームワーク情報設定
    data modify storage global: FrameworkVersion set value "0.0.2"
    data modify storage global: FirstFrameworkVersion set from storage global: FrameworkVersion

# Forceload
    # System Area
        execute in world:system_area run forceload add -1 -1 0 0
    # Ascent
        execute in overworld run forceload add -362 -129 -348 -113
        execute in overworld run forceload add -251 -97 -271 -113

# シュルカーボックス
    execute in world:system_area run setblock 0 0 0 lime_shulker_box

# オブジェクト設定
    # 削除
        kill 0-0-0-0-0
        kill 0-0-0-0-1
    # 召喚
        execute in world:system_area run summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}
        execute in world:system_area run summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,0],Marker:true,Invisible:true}

# グローバルスコア
    scoreboard objectives add Global dummy

# API・Lib用スコア
    scoreboard objectives add Api dummy
    scoreboard objectives add Lib dummy
    # ステータスログ用
        scoreboard objectives add LibStatusLogRemoveTimer dummy

# 一時スコア
    scoreboard objectives add Temporary dummy

# 定数スコア
    scoreboard objectives add Constant dummy
    # 宣言
        function core:load/define_constant
# ID
    # プレイヤー
        scoreboard objectives add PlayerID dummy
    # AssetMob
        scoreboard objectives add MobID dummy
    # MobUUID
        scoreboard objectives add MobUUID dummy
    # MobUUID
        scoreboard objectives add ObjectID dummy

# Assetスコア
    # 汎用Tick
        scoreboard objectives add GeneralMobTick dummy
        scoreboard objectives add GeneralObjectTick dummy

# イベントHandler
    # carrot_on_a_stickクリック
        scoreboard objectives add ClickCarrotOnAStickEvent used:carrot_on_a_stick
    # スニーク
        scoreboard objectives add SneakEvent custom:sneak_time
    # 初参加
        scoreboard objectives add FirstJoinEvent custom:play_time
    # 再参加
        scoreboard objectives add RejoinEvent custom:leave_game
    # 死亡
        scoreboard objectives add DeathEvent deathCount
    # リスポーン
        scoreboard objectives add RespawnEvent custom:time_since_death
    # アイテムドロップ
        scoreboard objectives add ItemDropEvent custom:drop
    # キル回数
        scoreboard objectives add KillCount dummy
    # ダメージ量
        scoreboard objectives add TakenDamage minecraft.custom:minecraft.damage_taken
        scoreboard objectives add HurtTakenDamage dummy
    # 相手の武器ダメージ
        scoreboard objectives add RedWeaponDamage dummy

# ステータススコア
    # Health
        # ステータス
            scoreboard objectives add Health dummy
            scoreboard objectives add MaxHealth dummy
        # 再生クールタイム
            scoreboard objectives add HealthRegenerationCooldown dummy
    # HealthRegeneration
        scoreboard objectives add HealthRegeneration dummy
    # Shield
        # ステータス
            scoreboard objectives add Shield dummy
            scoreboard objectives add MaxShield dummy
    # Credit
        scoreboard objectives add money dummy "Credit"

# タイマー
    scoreboard objectives add Timer dummy

# 入手したラウンド数
    scoreboard objectives add GetRound dummy

# エージェント
    scoreboard objectives add Agent dummy

# ゲームコア
    scoreboard objectives add GameCore dummy

# 生存人数
    scoreboard objectives add Alive_Players dummy

# Tellraw Prefixの設定
    data modify storage global: Prefix.Info set value "§a[Valorant] INFO>>>§r "
    data modify storage global: Prefix.Caution set value "§e[Valorant] CAUTION>>>§r "
    data modify storage global: Prefix.Error set value "§c[Valorant] ERROR>>>§r "
    data modify storage global: Prefix.Fatal set value "§5[Valorant] FATAL ERROR>>>§r "

# ゲームルール更新
    function core:load/define_gamerule

# チーム作成
    team add Red
    team add Blue

    # チームの設定
        team modify Red color red
        team modify Red friendlyFire false
        team modify Red nametagVisibility never
        team modify Red deathMessageVisibility never

        team modify Blue color blue
        team modify Blue friendlyFire false
        team modify Blue nametagVisibility never
        team modify Blue deathMessageVisibility never

# ボスバー作成(タイマー表示用) ※白色のボスバーのみ対応
    bossbar add valorant:timer ""
    bossbar set valorant:timer color white

# スパイク処理用
    function spike:load