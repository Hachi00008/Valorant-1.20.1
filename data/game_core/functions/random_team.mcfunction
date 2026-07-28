#> game_core:random_team
#
# ランダムチーム設定

# ちーむわけ
    execute as @a[sort=random] store result score @s Group as @e[limit=1] store result score @s Calc run scoreboard players remove @s[scores={Calc=0}] Calc 1

# チームに参加
    team join Red @a[scores={Group=0}]
    team join Blue @a[scores={Group=-1}]