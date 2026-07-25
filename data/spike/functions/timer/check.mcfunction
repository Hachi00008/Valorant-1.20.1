#> spike:timer/check
#
# スパイクのタイマーチェック
#
# @within function spike:timer/

execute if score $Timer Spike = $DoubleSFX Spike run scoreboard players set $SFXTime Spike 10
execute if score $Timer Spike = $TripleSFX Spike run scoreboard players set $SFXTime Spike 7

execute unless score $Timer Spike = $TimeOver Spike run return 0

# TODO: 攻めの勝利処理を書く
function game_core:game_tick/battle_phase/get_round/attacker
particle minecraft:explosion ~ ~1 ~
playsound entity.generic.explode master @a ~ ~ ~

tag @s remove Spike
function spike:defuse/reset

scoreboard players reset $Defuse Spike
scoreboard players reset $Timer Spike
scoreboard players reset $SFXTick Spike

scoreboard players set $SFXTime Spike 20