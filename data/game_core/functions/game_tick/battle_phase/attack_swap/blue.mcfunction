#> game_core:game_tick/battle_phase/attack_swap/blue
#
# レッドチームに攻撃を交代
#
# @within function game_core:game_tick/battle_phase/attack_swap/swap_attacker

# タグを外す
    tag @a remove AttackerSide
# タグを付与
    tag @a[team=Blue] add AttackerSide