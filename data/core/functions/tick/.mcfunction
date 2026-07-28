#> core:tick/
#
# 全体tick処理
#
# @within tag/function minecraft:tick

# プレイヤー処理
    execute as @a at @s run function player:tick/

# プレイヤー後Tick処理
    execute as @a at @s run function player:tick/post

# ゲーム中のTick処理
    execute if data storage game: {state:"Playing"} run function game_core:game_tick/
    execute as @e[tag=Spike] at @s run function spike:spike_tick

# スライムの処理
    execute as @e[type=slime] at @s if data entity @s {PortalCooldown:0} run function lib:kill_slime

    clear AZer0_ lrtactical:throwable
    clear imomodazo lrtactical:throwable