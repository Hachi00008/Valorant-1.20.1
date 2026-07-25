#> game_core:game_tick/build_icon/alive_red
#
# アイコンの設定
#
# @within function game_core:game_tick/build_icon/red

# スコアごとにアイコンを変更
    execute if score @s Agent matches 1 run data modify storage game:hud Cur set value '[{"translate":"space.-4","font":"space"},{"translate":"ui.team_bar_right","font":"ui","color":"red"},{"translate":"space.-16","font":"space"},{"translate":"space.-8","font":"space"},{"translate":"space.1","font":"space"},{"translate":"jett_icon","font":"agent","color":"white"}]'