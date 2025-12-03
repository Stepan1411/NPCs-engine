# Запуск тестового диалога

# Поиск ближайшего манекена
execute store result score #npc_found npc.temp if entity @e[type=minecraft:mannequin,tag=npc.mannequin,distance=..10,limit=1]

execute if score #npc_found npc.temp matches 0 if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Нет NPC поблизости (радиус 10 блоков)","color":"red"}]
execute if score #npc_found npc.temp matches 0 if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"No NPC nearby (10 blocks radius)","color":"red"}]
execute if score #npc_found npc.temp matches 0 run return 0

# Получить ID ближайшего NPC
execute store result score #npc_id npc.temp run data get entity @e[type=minecraft:mannequin,tag=npc.mannequin,distance=..10,limit=1,sort=nearest] npc.id
execute store result storage npcs:temp npc_id int 1 run scoreboard players get #npc_id npc.temp

# Запуск диалога
function npcs:dialog/play_start with storage npcs:temp

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Диалог запущен!","color":"green"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Dialog started!","color":"green"}]
