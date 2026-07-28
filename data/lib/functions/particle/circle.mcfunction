#> lib:particle/circle
#
# パーティクルを円形表示

# パーティクルの表示
    particle dust 0.7 0.7 0.7 4 ^ ^ ^3 0 0 0 0 1 force
    particle dust 0.7 0.7 0.7 4 ^ ^ ^-3 0 0 0 0 1 force
    
# 向きの変更
    tp @s ~ ~ ~ ~ ~10

# 再帰処理
    execute unless entity @s[x_rotation=90] at @s run function lib:particle/circle
    execute if entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ ~ -90