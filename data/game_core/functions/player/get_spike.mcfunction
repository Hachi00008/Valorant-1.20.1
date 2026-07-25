#> game_core:player/get_spike
#
# スパイクの取得処理
#
# @within function game_core:player/get_item

# アイテムクリア
    clear @s tacz:modern_kinetic_gun{WeaponType:"Spike"}

# アイテム入手
    execute in world:system_area run item replace entity @s hotbar.8 from block 0 0 0 container.0

# リセット
    tag @s add NewGetItem