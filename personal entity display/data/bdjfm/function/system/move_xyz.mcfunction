
data modify storage macro uuid0 set from entity @s UUID[0]
data modify storage macro uuid1 set from entity @s UUID[1]
data modify storage macro uuid2 set from entity @s UUID[2]
data modify storage macro uuid3 set from entity @s UUID[3]

function bdjfm:system/get_data with storage macro

$data modify storage macro x set value $(dx)
$data modify storage macro y set value $(dy)
$data modify storage macro z set value $(dz)

execute store result score .x main run data get storage macro x 100
execute store result score .y main run data get storage macro y 100
execute store result score .z main run data get storage macro z 100

scoreboard players operation .dx main += .x main
scoreboard players operation .dy main += .y main
scoreboard players operation .dz main += .z main

function bdjfm:system/move_final with storage macro
