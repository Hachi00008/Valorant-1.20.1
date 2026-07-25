#> game_core:player/get_item
#
# 地面にあるアイテムの取得処理
#
# @within function player:handler/sneak

# 近くのアイテムをシュルボに入れる
    execute as @e[type=item,sort=nearest,limit=1,distance=..1] in world:system_area run data modify block 0 0 0 Items append from entity @s Item

# そのアイテムの情報をかんし
    execute if data entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag{WeaponType:"SideArm"} run function game_core:player/get_sidearm
    execute unless entity @s[tag=NewGetItem] if data entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag{WeaponType:"MainArm"} run function game_core:player/get_mainarm
    execute if entity @s[tag=AttackerSide] unless entity @s[tag=NewGetItem] if data entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag{WeaponType:"Spike"} run function game_core:player/get_spike

# アイテムkill
    kill @e[type=item,sort=nearest,limit=1,distance=..1]

# シュルカーボックスの情報を削除
    execute in world:system_area run data modify block 0 0 0 Items set value []

# リセット
    tag @s remove NewGetItem