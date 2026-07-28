#> player:waiting_join
#
# 待機中の参加処理
#
# @within function player:handler/join

# ゲームモード変更
    gamemode adventure @s

# テレポート
    tp @s -305 -28 171

    effect give @s weakness infinite 100 true
    effect give @s resistance infinite 4 true