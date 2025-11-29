# Настройка NPC-манекена

# Установка ID
execute store result score @s npc.id run scoreboard players get #next_id npc.temp

# Установка типа (0 = манекен)
scoreboard players set @s npc.entity_type 0

# Связывание манекена с маркером
execute as @e[type=minecraft:mannequin,tag=npc.new_mannequin,limit=1,sort=nearest] run scoreboard players operation @s npc.id = #next_id npc.temp
execute as @e[type=minecraft:mannequin,tag=npc.new_mannequin,limit=1,sort=nearest] run tag @s remove npc.new_mannequin

# Связывание interaction с NPC
execute as @e[type=interaction,tag=npc.new_interaction,limit=1,sort=nearest] run scoreboard players operation @s npc.id = #next_id npc.temp
execute as @e[type=interaction,tag=npc.new_interaction,limit=1,sort=nearest] run tag @s remove npc.new_interaction

# Сохранение npc_id в манекене
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] store result entity @s data.npc_id int 1 run scoreboard players get #next_id npc.temp

# Сохранение позиции
execute store result storage npcs:temp npc.pos.x double 1 run data get entity @s Pos[0]
execute store result storage npcs:temp npc.pos.y double 1 run data get entity @s Pos[1]
execute store result storage npcs:temp npc.pos.z double 1 run data get entity @s Pos[2]

# Удаление тега new
tag @s remove npc.new

# Визуализация
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 10
