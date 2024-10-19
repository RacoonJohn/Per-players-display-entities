execute store result score .origin UUID0 run data get entity @s UUID[0]
execute store result score .origin UUID1 run data get entity @s UUID[1]
execute store result score .origin UUID2 run data get entity @s UUID[2]
execute store result score .origin UUID3 run data get entity @s UUID[3]

execute as @e[type=#bdjfm:displays,tag=personal_b_d,distance=..1000] if score @s UUID0 = .origin UUID0 if score @s UUID1 = .origin UUID1 if score @s UUID2 = .origin UUID2 if score @s UUID3 = .origin UUID3 run tag @s add bdjfm_uuid_equal


data modify storage macro x set from entity @s Motion[0]
data modify storage macro y set from entity @s Motion[1]
data modify storage macro z set from entity @s Motion[2]

function bdjfm:system/tp with storage macro

execute as @e[type=#bdjfm:displays,tag=bdjfm_uuid_equal,distance=..10] run function bdjfm:system/display

