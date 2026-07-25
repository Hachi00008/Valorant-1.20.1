#> game_core:game_tick/battle_phase/phase_change
#
# フェーズ変更処理
#
# @within function game_core:game_tick/battle_phase/finish

# ストレージの変更
    data modify storage game: Phase set value "Buy"

# スコアの変更
    scoreboard players set $Time Timer 600
    scoreboard players set @a Health 100

# tp
    tp @a[team=Red] @e[type=armor_stand,tag=Red_Pos,limit=1]
    tp @a[team=Blue] @e[type=armor_stand,tag=Blue_Pos,limit=1]

# スパイク削除
    kill @e[type=item,nbt={Item:{id:"minecraft:beacon"}}]
    clear @a beacon

# タグの削除
    tag @a remove Dead
    gamemode adventure @a[team=Red]
    gamemode adventure @a[team=Blue]
    
# スパイク召喚
    execute in world:system_area run item replace block 0 0 0 container.0 with beacon{display:{Name:'[{"translate": "item.valorant.spike","color":"aqua","bold":true}]',Lore:['[{"text":"このアイテムを持ってスニークすることで設置する。","color":"gray","italic":false}]']},WeaponType:"Spike"}
    execute in world:system_area run loot spawn 0 1 0 mine 0 0 0 debug_stick
    execute in world:system_area positioned 0 0 0 as @e[type=item,distance=..1,limit=1] at @e[tag=Spike_Pos,limit=1] run tp @s ~ ~ ~