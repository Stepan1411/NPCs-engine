# Список всех NPC

tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Список NPC:","color":"yellow"}]

# Подсчет NPC (маркеры)
execute store result score #npc_count npc.temp if entity @e[type=marker,tag=npc.entity]

tellraw @s [{"text":"Найдено маркеров: ","color":"gray"},{"score":{"name":"#npc_count","objective":"npc.temp"},"color":"yellow"}]

execute if score #npc_count npc.temp matches 0 run tellraw @s [{"text":"Нет созданных NPC","color":"gray"}]
execute if score #npc_count npc.temp matches 1.. run function npcs:npc/list_loop
