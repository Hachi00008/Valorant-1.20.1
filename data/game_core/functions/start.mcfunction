#> game_core:start
#
# ゲーム開始用トリガー(beta)

# ストレージの変更
    data modify storage game: state set value "Playing"
    data modify storage game: Phase set value "Buy"
    data modify storage game: OverTime set value 0b

# スコアリセット
    scoreboard players set @a KillCount 0
    scoreboard players set @a Health 100
    scoreboard players set @a MaxHealth 100
    scoreboard players set @a money 800
    scoreboard players set $Red GetRound 0
    scoreboard players set $Blue GetRound 0
    scoreboard players set $GameRound GameCore 1
    scoreboard players set $AttackerSide GameCore 1
    scoreboard players set $Time Timer 600

# スパイク処理のリセットもろもろ
    function spike:reset

# タグ削除
    tag @a remove AttackerSide

# テレポート
    tp @a[team=Red] @e[type=armor_stand,tag=Red_Pos,limit=1]
    tp @a[team=Blue] @e[type=armor_stand,tag=Blue_Pos,limit=1]

# スパイク召喚
    execute in world:system_area run item replace block 0 0 0 container.0 with beacon{display:{Name:'[{"translate": "item.valorant.spike","color":"aqua","bold":true}]',Lore:['[{"text":"このアイテムを持ってスニークすることで設置する。","color":"gray","italic":false}]']},WeaponType:"Spike"}
    execute in world:system_area run loot spawn 0 1 0 mine 0 0 0 debug_stick
    execute in world:system_area positioned 0 0 0 as @e[type=item,distance=..1,limit=1] at @e[tag=Spike_Pos,limit=1] run tp @s ~ ~ ~

# タグを付与
    tag @a add Shop_Phase
    tag @a[team=Red] add AttackerSide

clear @a

# カラムビット
    execute as @a run function asset:item/carambit/give/

# クラシック
    execute as @a run function asset:item/classic/give/

# 無限弾薬
    give @a tacz:ammo_box{AllTypeCreative:1b}

# ゲームモード変更
    gamemode adventure @a[team=Red]
    gamemode adventure @a[team=Blue]