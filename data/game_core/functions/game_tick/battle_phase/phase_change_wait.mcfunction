#> game_core:game_tick/battle_phase/phase_change
#
# フェーズ変更処理
#
# @within function game_core:game_tick/battle_phase/finish

# ストレージの変更
    data modify storage game: Phase set value "Wait"

# スコアの変更
    scoreboard players set $Time Timer 100
    scoreboard players set @a Health 100

# スパイク削除
    kill @e[type=item,nbt={Item:{id:"minecraft:beacon"}}]
    clear @a beacon