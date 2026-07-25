#> game_core:game_tick/
#
# ゲーム中のTick処理
#
# @within function core:tick/

# 購入フェーズ処理
    execute if data storage game: {Phase:"Buy"} run function game_core:game_tick/buy_phase/

# 戦闘フェーズ処理
    execute if data storage game: {Phase:"Battle"} run function game_core:game_tick/battle_phase/

# 待機フェーズ処理
    execute if data storage game: {Phase:"Wait"} run function game_core:game_tick/wait/

# ドロップアイテム処理
    execute as @e[type=item] run data modify entity @s PickupDelay set value 2

# タイマー描画処理(一番最後に実行)
    function game_core:game_tick/draw_timer