#> player:handler/sneak
#
# スニーク時イベント
#
# @within function player:tick/

# スニークトリガータグ付与
    tag @s add EventHandler.Sneak

# ゲーム中、近くにアイテムがある時の処理
    execute if score @s SneakEvent matches 10.. if entity @e[type=item,sort=nearest,limit=1,distance=..1] run function game_core:player/get_item