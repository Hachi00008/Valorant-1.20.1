#> game_core:game_tick/battle_phase/not_overtime
#
# オーバータイム時じゃない時の処理
#
# @within function game_core:game_tick/battle_phase/finish

# どちらかの入手ラウンド数が13以上 : 勝利判定
        execute if score $MaxGetRound Temporary matches 13.. run function game_core:game_tick/battle_phase/win_detection/normal
    
# ゲームラウンドが12 : 攻守交代
        execute if score $GameRound GameCore matches 12 run function game_core:game_tick/battle_phase/attack_swap/swap_attacker

# 両者の入手ラウンド数が12 : オーバータイム突入
        execute if score $GameRound GameCore matches 12 if score $Red GetRound = $Blue GetRound run function game_core:game_tick/battle_phase/breach_overtime