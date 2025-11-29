# Настройка NPC-сущности

# Установка ID
execute store result score @s npc.id run scoreboard players get #next_id npc.temp

# Установка типа (1 = другая сущность)
scoreboard players set @s npc.entity_type 1

# Сохранение позиции
execute store result storage npcs:temp npc.pos.x double 1 run data get entity @s Pos[0]
execute store result storage npcs:temp npc.pos.y double 1 run data get entity @s Pos[1]
execute store result storage npcs:temp npc.pos.z double 1 run data get entity @s Pos[2]

# Удаление тега new
tag @s remove npc.new

# Визуализация
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 10
