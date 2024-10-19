execute store result score .origin UUID0 run data get entity @s UUID[0]
execute store result score .origin UUID1 run data get entity @s UUID[1]
execute store result score .origin UUID2 run data get entity @s UUID[2]
execute store result score .origin UUID3 run data get entity @s UUID[3]

$execute as @e[type=#bdjfm:displays,tag=personal_b_d,distance=..1000,tag=$(tag)] if score @s UUID0 = .origin UUID0 if score @s UUID1 = .origin UUID1 if score @s UUID2 = .origin UUID2 if score @s UUID3 = .origin UUID3 run function bdjfm:system/execute {cmd:'$(cmd)'}




# ex: /function bdjfm:move {tag:"waw",cmd:"particle flame"}
# will make a flame particle where the personal display entity with tag "hub" is display

