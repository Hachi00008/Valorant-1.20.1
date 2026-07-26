#> game_core:game_tick/battle_phase/swap_attacker
#
# 攻守交代処理
#
# @within 
#  function game_core:game_tick/battle_phase/not_overtime

# スコアを変更
    scoreboard players add $AttackerSide GameCore 1
    execute if score $AttackerSide GameCore matches 2.. run scoreboard players set $AttackerSide GameCore 0

# タグの変更
    execute if score $AttackerSide GameCore matches 0 run function game_core:game_tick/battle_phase/attack_swap/blue
    execute if score $AttackerSide GameCore matches 1 run function game_core:game_tick/battle_phase/attack_swap/red

# スポーン地点の変更
    execute at @e[type=armor_stand,tag=Red_Pos] run summon armor_stand ~ ~ ~ {Tags:["Current_Pos"],Invisible:true,Marker:true}
    tp @e[type=armor_stand,tag=Red_Pos] @e[type=armor_stand,tag=Blue_Pos,limit=1]
    tp @e[type=armor_stand,tag=Blue_Pos] @e[type=armor_stand,tag=Current_Pos,limit=1]
    kill @e[type=armor_stand,tag=Current_Pos]

# 13ラウンドならCreditを初期化
    scoreboard players set @a money 800