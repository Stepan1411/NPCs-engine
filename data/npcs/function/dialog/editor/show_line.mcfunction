# Показать одну строку диалога с кнопками (макрос)

# Получить текст строки
$data modify storage npcs:temp line_text set from storage npcs:current_dialog.lines[$(index)]

# Получить ID NPC и сохранить в storage
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.editing_npc

# Показать строку с кнопками
function npcs:dialog/editor/display_line_helper with storage npcs:temp
