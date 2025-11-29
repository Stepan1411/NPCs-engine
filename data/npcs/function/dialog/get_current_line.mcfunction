# Получение текущей строки диалога

# Копирование нужной строки в temp
execute if score @s npc.dialog_line matches 1 run data modify storage npcs:temp current_line set from storage npcs:dialogs test.lines[0]
execute if score @s npc.dialog_line matches 2 run data modify storage npcs:temp current_line set from storage npcs:dialogs test.lines[1]
execute if score @s npc.dialog_line matches 3 run data modify storage npcs:temp current_line set from storage npcs:dialogs test.lines[2]

# Получение длины текста
execute store result score #text_length npc.temp run data get storage npcs:temp current_line.length
