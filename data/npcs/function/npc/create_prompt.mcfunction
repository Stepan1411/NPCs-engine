# Запрос на создание NPC

tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Создание NPC","color":"green"}]
execute if score localization l matches 1 run tellraw @s [{"text":"Выберите тип NPC:","color":"yellow"}]
execute if score localization l matches 1 run tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"  [Манекен]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_player"}}]
execute if score localization l matches 1 run tellraw @s [{"text":"  [Другая сущность]  ","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity_prompt"}}]

execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Create NPC","color":"green"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Select NPC type:","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s ""
execute if score localization l matches 2 run tellraw @s [{"text":"  [Mannequin]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_player"}}]
execute if score localization l matches 2 run tellraw @s [{"text":"  [Other entity]  ","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity_prompt"}}]
tellraw @s ""
