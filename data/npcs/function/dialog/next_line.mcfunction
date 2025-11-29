# Переход к следующей строке диалога

# Сброс sneak
scoreboard players set @s npc.sneak 0

# Получить длину текущей строки
function npcs:dialog/get_current_line
scoreboard players operation #char_index npc.temp = @s npc.dialog_char
scoreboard players operation #char_index npc.temp /= #2 npc.temp

# Проверка завершения текущей строки
execute unless score #char_index npc.temp >= #text_length npc.temp run return 0

# Переход к следующей строке
scoreboard players add @s npc.dialog_line 1
scoreboard players set @s npc.dialog_char 0

# Проверка конца диалога (получаем из storage)
execute store result score #total_lines npc.temp run data get storage npcs:dialogs test.total_lines
scoreboard players add #total_lines npc.temp 1
execute if score @s npc.dialog_line >= #total_lines npc.temp run function npcs:dialog/end
execute if score @s npc.dialog_line >= #total_lines npc.temp run return 0

# Звук перехода
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
