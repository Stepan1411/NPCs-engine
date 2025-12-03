# Запрос типа сущности для NPC

tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Выберите тип сущности:","color":"yellow"}]
execute if score localization l matches 1 run tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"  [Житель]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"villager\"}"}}]
execute if score localization l matches 1 run tellraw @s [{"text":"  [Зомби]  ","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"zombie\"}"}}]
execute if score localization l matches 1 run tellraw @s [{"text":"  [Скелет]  ","color":"white","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"skeleton\"}"}}]
execute if score localization l matches 1 run tellraw @s [{"text":"  [Свинья]  ","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"pig\"}"}}]

execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Select entity type:","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s ""
execute if score localization l matches 2 run tellraw @s [{"text":"  [Villager]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"villager\"}"}}]
execute if score localization l matches 2 run tellraw @s [{"text":"  [Zombie]  ","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"zombie\"}"}}]
execute if score localization l matches 2 run tellraw @s [{"text":"  [Skeleton]  ","color":"white","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"skeleton\"}"}}]
execute if score localization l matches 2 run tellraw @s [{"text":"  [Pig]  ","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"pig\"}"}}]
tellraw @s ""
