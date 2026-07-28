#> game_core:game_tick/buy_phase/init
#
# 購入フェーズの初期化処理
#
# @within function game_core:game_tick/buy_phase/

# ショップの設置
    execute at @e[type=armor_stand,tag=Shop_Pos] run function game_core:game_tick/buy_phase/shop_summon

# タグ付与
    tag @a add Shop_Phase

# 全員に残弾無限を付与
    give @a tacz:ammo_box{AllTypeCreative:1b}