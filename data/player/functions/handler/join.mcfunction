#> player:handler/join
#
# 共通参加処理
#
# @within function
#   player:handler/first_join
#   player:handler/rejoin

# 試合中の処理
    execute if data storage game: {state:"Playing"} run function player:playing_join

# 待機中の処理
    execute unless data storage game: {state:"Playing"} run function player:waiting_join

# エージェントの選択を解除
    scoreboard players set @s Agent 0

# チームから脱退
    team leave @s

# アイテム削除
    clear @s

# 体力リセット
    scoreboard players set @s Health 100
    effect give @s instant_health 1 50 true