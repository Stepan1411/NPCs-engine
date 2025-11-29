# Показать следующую строку диалога

# Проверка конца диалога
execute store result score #total_lines npc.temp if data storage npcs:current_dialog lines[]

# Если текущая строка >= количества строк - завершить диалог и выйти
execute if score @s npc.dialog_line >= #total_lines npc.temp run function npcs:dialog/play_end

# Если диалог завершён - не показывать строку
execute unless score @s npc.dialog_state matches 1 run return 0

# Получить текущую строку и проверить тип
execute store result storage npcs:temp line_index int 1 run scoreboard players get @s npc.dialog_line
function npcs:dialog/check_line_type with storage npcs:temp

# Увеличить номер строки ПОСЛЕ показа
scoreboard players add @s npc.dialog_line 1
