#> player:handler/respawn
#
# リスポーン時処理
#
# @within function player:tick/

# 死亡時タグ削除
    #tag @s remove Dead

# 回復
    effect give @s instant_health 1 50 true

# リスポーンタグ付与
    tag @s add InRespawnEvent