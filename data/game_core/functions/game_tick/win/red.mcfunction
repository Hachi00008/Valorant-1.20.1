#> game_core:game_tick/win/red
#
# レッドチームの勝利処理
#
# @within 
#   function game_core:game_tick/battle_phase/win_detection/normal
#   function game_core:game_tick/battle_phase/overtime

# ストレージの変更
    data modify storage game: Phase set value "Ending"