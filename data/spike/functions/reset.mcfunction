#> spike:reset
#
# リセット処理
#
# @within game_core:start

scoreboard players reset * Spike
scoreboard players reset * Spike.Sneak

execute as @a run function spike:attribute/reset

tag @a remove PlacingSpike
tag @a remove DefusingSpike

bossbar set valorant:spike name "スパイクを設置しています..."
bossbar set valorant:spike value 0
bossbar set valorant:spike style progress
bossbar set valorant:spike visible false
execute store result bossbar valorant:spike max run scoreboard players get $Max Spike

function spike:scoreboard