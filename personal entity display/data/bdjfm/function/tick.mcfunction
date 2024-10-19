execute as @a at @s run function bdjfm:system/player





scoreboard players add .timer main 1
scoreboard players operation .timer main %= #200 main
execute if score .timer main matches 0 run function bdjfm:system/clear



