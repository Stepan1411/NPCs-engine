# Загрузка диалогов NPC для проигрывания

# Получить npc_id из scoreboard
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.current_npc

# Загрузить диалоги
function npcs:dialog/load_npc_dialogs with storage npcs:temp
