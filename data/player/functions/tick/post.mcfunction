#> player:tick/post
#
# プレイヤー後Tick処理
#
# @within function core:tick/

# イベントハンドラー
    execute if score @s DeathEvent matches 1.. run function player:handler/death

# プレイヤーUI
    execute if data storage game: {state:"Playing"} if score @s Shield matches ..9 run title @s actionbar ["",{"translate": "space.16","font": "space"},{"text": "\uE006","font": "ui"},{"translate": "space.-5","font": "space"},{"translate": "space.-5","font": "space"},{"score": {"name": "@s","objective": "Shield"},"font": "middle_size"},{"translate": "space.7","font": "space"},{"score": {"name": "@s","objective": "Health"},"font": "ui"},{"translate": "space.256","font": "space"},{"translate": "space.2","font": "space"}]
    execute if data storage game: {state:"Playing"} unless score @s Shield matches ..9 run title @s actionbar ["",{"translate": "space.16","font": "space"},{"text": "\uE006","font": "ui"},{"translate": "space.-8","font": "space"},{"translate": "space.-5","font": "space"},{"score": {"name": "@s","objective": "Shield"},"font": "middle_size"},{"translate": "space.4","font": "space"},{"score": {"name": "@s","objective": "Health"},"font": "ui"},{"translate": "space.256","font": "space"},{"translate": "space.2","font": "space"}]
    