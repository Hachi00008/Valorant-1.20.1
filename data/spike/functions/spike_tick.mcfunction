#> spike:spike_tick
#
# スパイクのTick処理
# これの実行対象はSpikeのタグが付いているエンティティ (@e)
#
# @within function game_core:game_tick/

# TODO: 時間制限と、定期的なピッ音を作る
function spike:timer/

# プレイヤーが近くにいない限り発動しない
execute as @a[tag=DefusingSpike] unless predicate lib:is_sneaking run function spike:defuse/cancel
# TODO: 守り役がしゃがんでいるときのみ発動するように書く
execute unless entity @a[distance=..2, predicate=lib:is_sneaking,tag=!AttackerSide] run return 0

execute if entity @s[tag=!Defusing] run function spike:defuse/setup

function spike:defuse/