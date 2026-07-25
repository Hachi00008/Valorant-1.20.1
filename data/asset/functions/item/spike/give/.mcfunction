#> asset:item/spike/give/
#
# アイテムデータ設定

# ID
    data modify storage asset:item ID set value "valorant:spike"

# Item本体
    data modify storage asset:item Item set value "minecraft:beacon"

# 武器タイプ
    data modify storage asset:item WeaponType set value "Spike"

# 弾倉の中の弾数(Option)
    #data modify storage asset:item AmmoCount set value 

# 銃のID(Option)
    #data modify storage asset:item GunId set value ""

# 射撃モード(Option)
    #data modify storage asset:item FireMode set value ""

# 弾倉の中に弾が入ってるか(Option)
    #data modify storage asset:item BulletInBarrel set value true
    
# その他のNBT(Option)
    data modify storage asset:item OtherTags.display.Name set value '[{"translate": "item.valorant.spike","color":"aqua","bold":true}]'
    data modify storage asset:item OtherTags.display.Lore set value '[{"text":"このアイテムを持ってスニークすることで設置する。","color":"gray","italic":false}]'
    

# アイテム入手
    function asset:item/common/give