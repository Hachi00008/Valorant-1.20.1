#> game_core:game_tick/battle_phase/breach_overtime
#
# オーバータイム突入処理
#
# @within function game_core:game_tick/battle_phase/not_overtime

# ストレージの変更
    data modify storage game: OverTime set value 1b

# スコアリセット
    scoreboard players set $OverTimeRound GameCore 0

# 攻守交代
    function game_core:game_tick/battle_phase/attack_swap/swap_attacker