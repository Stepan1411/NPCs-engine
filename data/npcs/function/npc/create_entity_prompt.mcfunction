# Запрос типа сущности для NPC

tellraw @s ""
tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Выберите тип сущности:","color":"yellow"}]
tellraw @s ""
tellraw @s [{"text":"  [Житель]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"villager\"}"}}]
tellraw @s [{"text":"  [Зомби]  ","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"zombie\"}"}}]
tellraw @s [{"text":"  [Скелет]  ","color":"white","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"skeleton\"}"}}]
tellraw @s [{"text":"  [Свинья]  ","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity {type:\"pig\"}"}}]
tellraw @s ""
