#> game_core:game_tick/battle_phase/phase_change
#
# フェーズ変更処理
#
# @within function game_core:game_tick/battle_phase/finish

# ストレージの変更
    data modify storage game: Phase set value "Buy"

# スコアの変更
    scoreboard players set $Time Timer 600

# tp
    tp @a[team=Red] @e[type=armor_stand,tag=Red_Pos,limit=1]
    tp @a[team=Blue] @e[type=armor_stand,tag=Blue_Pos,limit=1]