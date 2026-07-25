#> asset:item/carambit/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:carambit"

# Item本体
    data modify storage asset:item Item set value "lrtactical:melee"

# 武器タイプ
    data modify storage asset:item WeaponType set value "Melee"

# 弾倉の中の弾数(Option)
    #data modify storage asset:item AmmoCount set value 

# 銃のID(Option)
    #data modify storage asset:item GunId set value ""

# 射撃モード(Option)
    #data modify storage asset:item FireMode set value ""

# 弾倉の中に弾が入ってるか(Option)
    #data modify storage asset:item BulletInBarrel set value true

# その他のNBT(Option)
    data modify storage asset:item OtherTags.MeleeWeaponId set value "lrtactical:karambit"
    data modify storage asset:item OtherTags.GunDamage set value 7d
    data modify storage asset:item OtherTags.display set value {Name:""}
    data modify storage asset:item OtherTags.AttributeModifiers set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.08,Operation:0,UUID:[I;1773930017,1430080640,-2055983142,257067548],Slot:"mainhand"}]

# アイテム入手
    function asset:item/common/give