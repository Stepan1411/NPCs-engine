# Создание NPC с другой сущностью

# Получение следующего ID
execute store result score #next_id npc.temp run data get storage npcs:data next_npc_id
execute unless data storage npcs:data next_npc_id run scoreboard players set #next_id npc.temp 1

# Создание маркера NPC
$summon marker ~ ~ ~ {Tags:["npc.new","npc.entity"],CustomName:'{"text":"NPC"}',data:{entity_type:"$(type)"}}

# Установка данных
execute as @e[type=marker,tag=npc.new,limit=1] run function npcs:npc/setup_entity

# Увеличение счетчика
scoreboard players add #next_id npc.temp 1
execute store result storage npcs:data next_npc_id int 1 run scoreboard players get #next_id npc.temp

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC создан!","color":"green"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC created!","color":"green"}]
