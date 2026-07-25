#> asset:item/common/give
#
# アイテムを入手
#
# @within function asset:item/*/give/

# 検証
    execute unless data storage asset:item ID run tellraw @a [{"storage": "global:","nbt": "Prefix.Error"},{"text": "引数が不足しています","color": "white"},{"text": " ID","color": "red"}]
    execute unless data storage asset:item Item run tellraw @a [{"storage": "global:","nbt": "Prefix.Error"},{"text": "引数が不足しています","color": "white"},{"text": " Item","color": "red"}]
    
# データ設定
    function asset_manager:item/create/set_data

# ショップフェーズ時の処理
    execute if entity @s[tag=Shop_Phase] run function asset_manager:item/clear

# アイテム生成
    execute unless entity @s[tag=Shop_Phase] in world:system_area run loot give @s mine 0 0 0 debug_stick
    execute if entity @s[tag=Shop_Phase] if data storage asset:item {WeaponType:"SideArm"} in world:system_area run item replace entity @s hotbar.1 from block 0 0 0 container.0
    execute if entity @s[tag=Shop_Phase] if data storage asset:item {WeaponType:"MainArm"} in world:system_area run item replace entity @s hotbar.2 from block 0 0 0 container.0
    

# リセット
    data remove storage asset:item ID
    data remove storage asset:item Item
    data remove storage asset:item RawName
    data remove storage asset:item Type
    data remove storage asset:item WeaponType
    data remove storage asset:item OtherTags