#> game_core:game_tick/battle_phase/
#
# 戦闘フェーズ時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute unless entity @e[type=block_display,tag=Spike] if score $Time Timer matches 1.. run scoreboard players remove $Time Timer 1

# 時間切れの処理
    execute if score $Time Timer matches 0 run function game_core:game_tick/battle_phase/get_round/defender