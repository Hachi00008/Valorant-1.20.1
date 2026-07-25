#> game_core:game_tick/battle_phase/team_player
#
# 人数が変動した時のチーム内プレイヤーの監視
#
# @within function player:hurt/death

# 両チームの人数を取得
    execute store result score $Red Alive_Players if entity @a[team=Red,tag=!Dead]
    execute store result score $Blue Alive_Players if entity @a[team=Blue,tag=!Dead]

# チーム内の人数が0の時の処理
    execute if score $Red Alive_Players matches 0 run function game_core:game_tick/battle_phase/extinction/blue
    execute if score $Blue Alive_Players matches 0 run function game_core:game_tick/battle_phase/extinction/red

# リセット
    scoreboard players reset $Red Alive_Players
    scoreboard players reset $Blue Alive_Players