#> spike:place/reset
#
# スパイク設置処理のタグなどの削除
#
# @within function spike:place/cancel
# @within function spike:place/done

tag @s remove PlacingSpike
scoreboard players reset @s Spike.Sneak
bossbar set valorant:spike value 0
bossbar set valorant:spike visible false
function spike:attribute/reset