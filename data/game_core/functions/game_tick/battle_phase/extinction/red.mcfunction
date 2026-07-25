#> game_core:game_tick/battle_phase/extinction/red
#
# レッドチームが全滅した時の処理
#
# @within function game_core:game_tick/battle_phase/team_player

# レッドチームがアタッカー時の処理
    execute if score $AttackerSide GameCore matches 0 unless entity @e[tag=Spike] run function game_core:game_tick/battle_phase/get_round/defender

# レッドチームがでフェンダーの時の処理
    execute unless score $AttackerSide GameCore matches 0 run function game_core:game_tick/battle_phase/get_round/attacker