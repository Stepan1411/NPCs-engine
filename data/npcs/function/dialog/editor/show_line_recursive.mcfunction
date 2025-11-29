# Рекурсивный вывод строк диалога

# Проверка что ещё есть строки
execute unless score #idx npc.temp < #total npc.temp run return 0

# Сохранить индекс в storage
execute store result storage npcs:temp index int 1 run scoreboard players get #idx npc.temp

# Показать строку
function npcs:dialog/editor/show_line_by_index with storage npcs:temp

# Увеличить индекс
scoreboard players add #idx npc.temp 1

# Рекурсивный вызов (максимум 50 для безопасности)
execute if score #idx npc.temp matches ..49 if score #idx npc.temp < #total npc.temp run function npcs:dialog/editor/show_line_recursive
