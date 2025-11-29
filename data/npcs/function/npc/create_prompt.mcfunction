# Запрос на создание NPC

tellraw @s ""
tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Создание NPC","color":"green"}]
tellraw @s [{"text":"Выберите тип NPC:","color":"yellow"}]
tellraw @s ""
tellraw @s [{"text":"  [Манекен]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_player"}}]
tellraw @s [{"text":"  [Другая сущность]  ","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/function npcs:npc/create_entity_prompt"}}]
tellraw @s ""
