

$summon $(type)_display ~ ~ ~ {Tags:["personal_b_d","new",$(Tags)],$(data)}

execute store result score @e[tag=personal_b_d,tag=new,type=#bdjfm:displays] UUID0 run data get entity @s UUID[0]
execute store result score @e[tag=personal_b_d,tag=new,type=#bdjfm:displays] UUID1 run data get entity @s UUID[1]
execute store result score @e[tag=personal_b_d,tag=new,type=#bdjfm:displays] UUID2 run data get entity @s UUID[2]
execute store result score @e[tag=personal_b_d,tag=new,type=#bdjfm:displays] UUID3 run data get entity @s UUID[3]

data modify storage display element append value {UUID:[I;0,0,0,0]}

data modify storage display element[-1].UUID set from entity @e[tag=personal_b_d,tag=new,type=#bdjfm:displays,limit=1] UUID
$data modify storage display element[-1].Pos set value [$(x)d,$(y)d,$(z)d]
data modify storage display element[-1].transformation set from entity @e[tag=personal_b_d,tag=new,type=#bdjfm:displays,limit=1] transformation


data modify entity @e[tag=personal_b_d,tag=new,type=#bdjfm:displays,limit=1] view_range set value 0.008



tag @e[tag=personal_b_d,tag=new,type=#bdjfm:displays,limit=1] remove new

# command type: function bdjfm:new_display {type:"block",x:0,y:10,z:8,Tags:'"my_block_display","ice_cream"',data:'block_state:{Name:"minecraft:ice"}'}

# position precision: 0.01
# position max : +21474836.47
# position min : -21474836.48

# don't change the transformation.translation value of the entity display after sommoned it, this will not work, use the function bdjfm:move
# don't change xyz coordinates, this will not work, use the function bdjfm:move

# you can change Rotation and all other data of the entity

# if you want to execute a command to a personal display entity use the function bdjfm:execute

