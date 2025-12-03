# Список всех NPC

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Список NPC:","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC List:","color":"yellow"}]

# Подсчет NPC (маркеры)
execute store result score #npc_count npc.temp if entity @e[type=marker,tag=npc.entity]

execute if score localization l matches 1 run tellraw @s [{"text":"Найдено маркеров: ","color":"gray"},{"score":{"name":"#npc_count","objective":"npc.temp"},"color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Markers found: ","color":"gray"},{"score":{"name":"#npc_count","objective":"npc.temp"},"color":"yellow"}]

execute if score #npc_count npc.temp matches 0 if score localization l matches 1 run tellraw @s [{"text":"Нет созданных NPC","color":"gray"}]
execute if score #npc_count npc.temp matches 0 if score localization l matches 2 run tellraw @s [{"text":"No NPCs created","color":"gray"}]
execute if score #npc_count npc.temp matches 1.. run function npcs:npc/list_loop
