execute store result score .origin UUID0 run data get entity @s UUID[0]
execute store result score .origin UUID1 run data get entity @s UUID[1]
execute store result score .origin UUID2 run data get entity @s UUID[2]
execute store result score .origin UUID3 run data get entity @s UUID[3]

$execute as @e[type=#bdjfm:displays,tag=personal_b_d,distance=..1000,tag=$(tag)] if score @s UUID0 = .origin UUID0 if score @s UUID1 = .origin UUID1 if score @s UUID2 = .origin UUID2 if score @s UUID3 = .origin UUID3 run function bdjfm:system/move_$(type) {dx:$(dx),dy:$(dy),dz:$(dz)}




# ex: /function bdjfm:move {tag:"hub",type:"tp",dx:0,dy:10,dz:80}
# will tp at (0,10,80) the personal entity display with tag "hub"

# ex: /function bdjfm:move {tag:"up",type:"xyz",dx:0.5,dy:0,dz:0}
# will move 0.5 blocks up the personal entity display with tag "up"

# ex: /function bdjfm:move {tag:"forward",type:"polar",dx:0,dy:0,dz:2}
# will move 2 blocks forward the personal entity display with tag "forward"


