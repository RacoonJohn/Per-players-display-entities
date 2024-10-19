data modify storage display temp set value []

execute as @e[type=#bdjfm:displays,tag=personal_b_d] run function bdjfm:system/clear_display

data modify storage display element set from storage display temp

data remove storage display temp


