# Цикл вывода строк диалога (рекурсивный)

# Получить ID NPC один раз
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.editing_npc

# Начать с индекса 0
scoreboard players set #idx npc.temp 0

# Запустить рекурсивный цикл
function npcs:dialog/editor/show_line_recursive
