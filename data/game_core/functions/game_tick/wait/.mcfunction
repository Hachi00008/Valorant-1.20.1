#> game_core:game_tick/wait/
#
# 待機時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute if score $Time Timer matches 1.. run scoreboard players remove $Time Timer 1

# カウントダウン
    execute if score $Time Timer matches 79 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.5
    execute if score $Time Timer matches 59 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.3
    execute if score $Time Timer matches 39 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.4
    execute if score $Time Timer matches 19 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.2

# タグを削除
    execute if score $Time Timer matches 0 run function game_core:game_tick/battle_phase/phase_change