
execute store result score .x main run data get entity @s Pos[0] 100
execute store result score .y main run data get entity @s Pos[1] 100
execute store result score .z main run data get entity @s Pos[2] 100

data modify storage macro uuid0 set from entity @s UUID[0]
data modify storage macro uuid1 set from entity @s UUID[1]
data modify storage macro uuid2 set from entity @s UUID[2]
data modify storage macro uuid3 set from entity @s UUID[3]

function bdjfm:system/get_data with storage macro

#tellraw @a {"score": { "name": ".y","objective": "main"}}
#tellraw @a {"score": { "name": ".dy","objective": "main"}}


scoreboard players operation .dx main -= .x main
scoreboard players operation .dy main -= .y main
scoreboard players operation .dz main -= .z main
execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players operation .dx main += .dx2 main
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players operation .dy main += .dy2 main
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players operation .dz main += .dz2 main



tag @s remove bdjfm_uuid_equal

