#> game_core:game_tick/buy_phase/phase_wall
#
# 購入フェーズ時のバリアを展開
#
# @within function game_core:game_tick/buy_phase/

# パーティクル
    particle dragon_breath ^ ^ ^ ^ ^10000000 ^ 0.00000001 0 normal @a
    particle dragon_breath ^-0.3 ^ ^ ^ ^10000000 ^ 0.00000001 0 normal @a
    particle dragon_breath ^0.3 ^ ^ ^ ^10000000 ^ 0.00000001 0 normal @a

# バリアブロック
    fill ~ ~ ~ ~ ~2 ~ barrier