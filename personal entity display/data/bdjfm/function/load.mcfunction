scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

execute unless data storage display element run data modify storage display element set value []


scoreboard objectives add main dummy

summon marker 0 0 0 {Tags:["math"],UUID:[I;1,2,3,4]}


