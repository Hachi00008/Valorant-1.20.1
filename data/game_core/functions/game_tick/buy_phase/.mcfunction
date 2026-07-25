#> game_core:game_tick/buy_phase/
#
# 購入フェーズ時の処理
#
# @within function game_core:game_tick/

# スコアを減らす
    execute if score $Time Timer matches 1.. run scoreboard players remove $Time Timer 1

# バリア作成
    execute if score $Time Timer matches 1.. at @e[tag=Phase_Wall] run function game_core:game_tick/buy_phase/phase_wall

# 初期化処理
    execute if score $Time Timer matches 599 run function game_core:game_tick/buy_phase/init

# カウントダウン
    execute if score $Time Timer matches 79 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.5
    execute if score $Time Timer matches 59 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.3
    execute if score $Time Timer matches 39 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.4
    execute if score $Time Timer matches 19 as @a at @s run playsound ui.button.click record @s ~ ~ ~ 1.0 1.2

# タグを削除
    execute if score $Time Timer matches 0 run function game_core:game_tick/buy_phase/finish