#> spike:place/setup
#
# スパイクの設置が完了したときの処理
#
# @within function spike:place/

# リセット処理
clear @s beacon
function spike:place/reset

# スパイク自体の設置
summon block_display ~-0.5 ~ ~-0.5 {Tags:["Spike"],block_state:{Name:"minecraft:beacon"}}
playsound minecraft:block.anvil.use master @a ~ ~ ~ 5 1 1

# ログ
tellraw @a [{"storage": "global:","nbt": "Prefix.Info"},{"text": "スパイクを設置しました。","color": "white"}]

# ストップウォッチの設定
scoreboard players set $SFXTime Spike 20
scoreboard players set $Timer Spike 0

# Creditの獲得
    tag @s add Spike_Place