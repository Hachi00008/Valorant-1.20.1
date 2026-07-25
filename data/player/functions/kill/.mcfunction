#> core:player/kill/
#
# プレイヤーがキルをした時の処理
#
# @within function player:hurt/death

# キル回数
    scoreboard players add @s KillCount 1

# お金獲得
    scoreboard players add @s money 200

# 音
    execute if score @s KillCount matches 1 run playsound valorant:multikill_1 record @s
    execute if score @s KillCount matches 2 run playsound valorant:multikill_2 record @s
    execute if score @s KillCount matches 3 run playsound valorant:multikill_3 record @s
    execute if score @s KillCount matches 4 run playsound valorant:multikill_4 record @s
    execute if score @s KillCount matches 5 run playsound valorant:multikill_5 record @s

# リセット
    execute if score @s KillCount matches 5.. run scoreboard players set @s KillCount 0