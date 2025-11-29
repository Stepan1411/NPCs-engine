# Восстановление позиции игрока

execute store result score #x npc.temp run data get storage npcs:temp player.pos.x 1000
execute store result score #y npc.temp run data get storage npcs:temp player.pos.y 1000
execute store result score #z npc.temp run data get storage npcs:temp player.pos.z 1000

execute store result storage npcs:temp tp.x double 0.001 run scoreboard players get #x npc.temp
execute store result storage npcs:temp tp.y double 0.001 run scoreboard players get #y npc.temp
execute store result storage npcs:temp tp.z double 0.001 run scoreboard players get #z npc.temp

function npcs:camera/tp_macro with storage npcs:temp tp
