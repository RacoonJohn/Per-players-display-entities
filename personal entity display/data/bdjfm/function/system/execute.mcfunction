data modify storage macro uuid0 set from entity @s UUID[0]
data modify storage macro uuid1 set from entity @s UUID[1]
data modify storage macro uuid2 set from entity @s UUID[2]
data modify storage macro uuid3 set from entity @s UUID[3]

function bdjfm:system/get_data with storage macro

execute store result storage macro x double 0.01 run scoreboard players get .dx main
execute store result storage macro y double 0.01 run scoreboard players get .dy main
execute store result storage macro z double 0.01 run scoreboard players get .dz main
$data modify storage macro cmd set value '$(cmd)'

function bdjfm:system/execute_final with storage macro

