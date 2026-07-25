#> player:playing_join
#
# 試合中の参加処理
#
# @within function player:handler/join

# ゲームモード変更
    gamemode spectator @s



# メッセージ
    tellraw @s ["",{"text": "試合中のため自動的に観戦者モードとなりました","color": "red"}]