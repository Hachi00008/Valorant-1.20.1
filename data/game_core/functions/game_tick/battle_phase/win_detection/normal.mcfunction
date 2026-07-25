#> game_core:game_tick/battle_phase/win_detection/normal
#
# 勝利判定(not オーバータイム)
#
# @within function game_core:game_tick/battle_phase/not_overtime

# レッドチームの入手ラウンド数
    execute if score $Red GetRound matches 13.. run function game_core:game_tick/win/red

# ブルーチームの入手ラウンド数
    execute if score $Blue GetRound matches 13.. run function game_core:game_tick/win/blue