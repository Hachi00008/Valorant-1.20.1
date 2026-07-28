#> player:agent/jett/updraft
#
# アップドラフト処理
#
# @within function player:agent/skill_use_special

# 実際の浮かせる処理
    summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.5,Duration:6,Age:4,Effects:[{Id:25,Amplifier:100b,Duration:2,ShowParticles:0b,ShowIcon:0b}]}

# 演出
    playsound item.firecharge.use player @s ~ ~ ~ 1.0 1.8
    playsound item.trident.riptide_1 player @s ~ ~ ~ 1.0 1.5

# パーティクル
    particle cloud ~ ~ ~ 0.1 0.1 0.1 0.3 50 normal @a