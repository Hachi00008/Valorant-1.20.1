#> spike:defuse/done
#
# スパイクの解除が完了したときの処理
#
# @within function spike:defuse/

# リセット処理
function spike:defuse/reset

# スパイク自体の設置
#tag @s remove Spike
playsound minecraft:block.anvil.use master @a ~ ~ ~ 5 1 1
# ログ
tellraw @a [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクを解除しました。","color": "white"}]

# TODO: 守りの勝利処理を書く
function game_core:game_tick/battle_phase/get_round/defender