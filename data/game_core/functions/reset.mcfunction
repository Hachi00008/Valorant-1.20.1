#> game_core:reset
#
# ゲームリセットトリガー
#
# @within function
#   game_core:game_tick/win/red
#   game_core:game_tick/win/blue

# ボスバーを非表示
    bossbar set valorant:timer visible false

# ストレージの変更
    data modify storage game: state set value "Waiting"
    data modify storage game: OverTime set value 0b

# スコアリセット
    scoreboard players set @a KillCount 0
    scoreboard players set @a Health 100
    scoreboard players set @a MaxHealth 100
    scoreboard players set @a money 800
    scoreboard players set $Red GetRound 0
    scoreboard players set $Blue GetRound 0
    scoreboard players set $GameRound GameCore 1
    scoreboard players set $AttackerSide GameCore 1
    scoreboard players set $Time Timer 600

# スパイク処理のリセットもろもろ
    function spike:reset

# タグ削除
    tag @a remove AttackerSide

# アイテム削除
    clear @a

# テレポート
    tp @a -305 -28 171

# アマスタの設置
    execute if score $MapID GameCore matches 1 run function game_core:map_set/ascent

# ゲームモード変更
    gamemode adventure @a

    