
data modify storage macro uuid0 set from entity @s UUID[0]
data modify storage macro uuid1 set from entity @s UUID[1]
data modify storage macro uuid2 set from entity @s UUID[2]
data modify storage macro uuid3 set from entity @s UUID[3]

function bdjfm:system/get_data with storage macro

tag @s add origin
tp 00000001-0000-0002-0000-000300000004 0.0 0.0 0.0
$execute as 00000001-0000-0002-0000-000300000004 at @s rotated as @e[tag=origin,type=#bdjfm:displays] run tp @s ^$(dx) ^$(dy) ^$(dz)
tag @s remove origin


execute store result score .x main run data get entity 00000001-0000-0002-0000-000300000004 Pos[0] 100
execute store result score .y main run data get entity 00000001-0000-0002-0000-000300000004 Pos[1] 100
execute store result score .z main run data get entity 00000001-0000-0002-0000-000300000004 Pos[2] 100

scoreboard players operation .dx main += .x main
scoreboard players operation .dy main += .y main
scoreboard players operation .dz main += .z main

function bdjfm:system/move_final with storage macro
