#> game_core:game_tick/battle_phase/overtime
#
# オーバータイム時の処理
#
# @within function game_core:game_tick/battle_phase/finish

# 勝者のスコアの差を計算
    scoreboard players operation $Difference Temporary = $Red GetRound
    scoreboard players operation $Difference Temporary -= $Blue GetRound

# 勝利判定(2..→Red、..-2→Blue)
    execute if score $Difference Temporary matches 2.. run function game_core:game_tick/win/red
    execute if score $Difference Temporary matches ..-2 run function game_core:game_tick/win/blue

# 攻守交代処理
    function game_core:game_tick/battle_phase/attack_swap/swap_attacker