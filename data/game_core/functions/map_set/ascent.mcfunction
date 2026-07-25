#> game_core:map_set/ascent
#
# テレポート用のアマスタをアセントに設置
#
# @within function game_core:reset

# アーマースタンド削除
    kill @e[tag=Blue_Pos]
    kill @e[tag=Red_Pos]

# Red Pos
    summon armor_stand -358 -11 -121 {Invisible:true,NoBasePlate:true,Small:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Red Pos","color":"red"}',Tags:["Red_Pos"]}

# Blue Pos
    summon armor_stand -259 -10 -104 {Invisible:true,NoBasePlate:true,Small:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Blue Pos","color":"blue"}',Tags:["Blue_Pos"]}