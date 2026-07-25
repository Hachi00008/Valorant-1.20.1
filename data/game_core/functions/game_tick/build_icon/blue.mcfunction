#> game_core:game_tick/build_icon/blue
#
# アイコンの表示
#
# @within function game_core:game_tick/draw_timer

# ストレージに代入
    data modify storage game:hud Cur set value '[{"translate":"ui.team_bar_right","font":"ui","color":"blue"},{"translate":"space.-16","font":"space"},{"translate":"space-8","font":"space"},{"translate":"space.-2","font":"space"},{"text":"?","color":"white"}]'

# 生存していないなら
    execute if entity @s[tag=Dead] run data modify storage game:hud Cur set value '[{"translate":"space.8","font":"space"},{"translate":"space.6","font":"space"},{"translate":"space.-16","font":"space"},{"translate":"ui.team_bar_left","font":"ui","color":"blue"},{"translate":"space.-16","font":"space"},{"translate":"space.-8","font":"space"},{"translate":"space.-2","font":"space"},{"translate":"ui.empty","font":"ui","color":"white"},{"translate":"space.3","font":"space"}]'

# 生存しているなら
    execute unless entity @s[tag=Dead] run function game_core:game_tick/build_icon/alive_blue

# append
    data modify storage game:hud BlueIcons append from storage game:hud Cur

# リセット
    data remove storage game:hud Cur