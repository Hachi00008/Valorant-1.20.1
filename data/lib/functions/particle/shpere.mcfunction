#> lib:particle/circle
#
# パーティクルを円形表示

# パーティクルの表示
    function lib:particle/circle
    
# 向きの変更
    tp @s ~ ~ ~ ~10 ~

# 再帰処理
    execute unless entity @s[y_rotation=0..9] at @s run function lib:particle/shpere