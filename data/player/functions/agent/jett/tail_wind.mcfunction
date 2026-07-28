#> player:agent/jett/tail_wind
#
# テイルウィンド処理



# 少し上にtp
    #tp @s ~ ~0.7 ~

# スライム召喚
    execute rotated ~ 0 positioned ^ ^0.3 ^-0.2 run function lib:summon_slime

# 演出
    playsound entity.player.attack.sweep player @s ~ ~ ~ 1.0 0.5
    playsound entity.firework_rocket.launch player @s ~ ~ ~ 1.0 2.0

# パーティクル
    particle dust 0.0 1.0 1.0 1.0 ~ ~ ~ 0.7 0.7 0.7 0.3 50