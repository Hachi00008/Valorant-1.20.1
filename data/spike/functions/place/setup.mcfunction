#> spike:place/setup
#
# スパイクの設置を始めた際の処理。
# PlacingSpike タグで検知しています。
#
# @within function spike:place/

tellraw @s [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクを設置します。","color": "white"}]

tag @s add PlacingSpike
playsound block.note_block.chime master @a ~ ~ ~ 5 1 1

attribute @s generic.movement_speed base set 0
effect give @s jump_boost infinite 170 true

bossbar set valorant:spike style progress
bossbar set valorant:spike name "スパイクを設置しています..."
execute store result bossbar valorant:spike max run scoreboard players get $Max Spike
execute store result bossbar valorant:spike value run scoreboard players set @s Spike.Sneak 0

bossbar set valorant:spike players @a[tag=AttackerSide]
bossbar set valorant:spike visible true
