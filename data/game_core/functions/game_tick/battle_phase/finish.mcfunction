#> game_core:game_tick/battle_phase/finish
#
# フェーズの終了処理
#
# @within function game_core:game_tick/battle_phase/

# ラウンド数の追加
    scoreboard players add $GameRound GameCore 1

# どちらからチームの入手ラウンド数取得
    scoreboard players operation $MaxGetRound Temporary = $Red GetRound
    scoreboard players operation $MaxGetRound Temporary > $Blue GetRound

# スパイクキル
    kill @e[type=block_display,tag=Spike]
    kill @e[type=item]

# 条件分岐
    # オーバータイム時処理
        execute unless data storage game: {Phase:"Wait"} if data storage game: {OverTime:1b} run function game_core:game_tick/battle_phase/overtime

    # オーバータイムに入っていない時の処理
        execute unless data storage game: {Phase:"Wait"} unless data storage game: {OverTime:1b} run function game_core:game_tick/battle_phase/not_overtime

# ストレージがEndingじゃないなら通常通り進行
    execute unless data storage game: {Phase:"Wait"} unless data storage game: {Phase:"Ending"} run function game_core:game_tick/battle_phase/phase_change_wait

# リセット
    scoreboard players reset $MaxGetRound Temporary
    scoreboard players set @a KillCount 0