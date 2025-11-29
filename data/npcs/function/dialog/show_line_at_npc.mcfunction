# Показать строку диалога сбоку от NPC

# Получить индекс строки и вызвать макрос
execute store result storage npcs:temp line_index int 1 run scoreboard players get @s npc.dialog_line

# Получить текст через макрос
function npcs:dialog/get_line_text with storage npcs:temp

# Найти NPC и показать текст рядом с ним
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.current_npc
function npcs:dialog/show_at_npc_macro with storage npcs:temp
