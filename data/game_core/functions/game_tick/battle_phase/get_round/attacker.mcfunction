#> game_core:game_tick/battle_phase/get_cound/attacker
#
# アタッカーのラウンド入手処理
#
# @within function spike:timer/check

# どちらのチームがアタッカーか確認+ラウンド入手
    execute if score $AttackerSide GameCore matches 0 run scoreboard players add $Red GetRound 1
    execute if score $AttackerSide GameCore matches 1 run scoreboard players add $Blue GetRound 1
# 終了処理
    function game_core:game_tick/battle_phase/finish