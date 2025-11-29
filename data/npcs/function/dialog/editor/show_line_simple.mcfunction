# Показать одну строку (упрощённая версия)

# Получить текст строки
$data modify storage npcs:temp line_text set from storage npcs:current_dialog lines[$(index)]

# Сохранить index
$data modify storage npcs:temp index set value $(index)

# Получить npc_id из scoreboard
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.editing_npc

# Показать строку
function npcs:dialog/editor/display_line_helper with storage npcs:temp
