#> asset_manager:item/clear
#
# アイテム削除
#
# @within function asset:item/common/give

# サイドアーム
    execute if data storage asset:item {WeaponType:"SideArm"} run clear @s tacz:modern_kinetic_gun{WeaponType:"SideArm"}

# メインアーム
    execute if data storage asset:item {WeaponType:"MainArm"} run clear @s tacz:modern_kinetic_gun{WeaponType:"MainArm"}
