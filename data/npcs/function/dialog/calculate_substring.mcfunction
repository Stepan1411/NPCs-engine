# Вычисление подстроки для отображения

# Получить текущую строку
function npcs:dialog/get_current_line

# Вычислить индекс символа (каждые 2 тика = 1 символ)
scoreboard players operation #char_index npc.temp = @s npc.dialog_char
scoreboard players operation #char_index npc.temp /= #2 npc.temp

# Проверка завершения печати
execute if score #char_index npc.temp >= #text_length npc.temp run function npcs:dialog/show_final_text
execute if score #char_index npc.temp >= #text_length npc.temp run return 0

# Собрать подстроку из массива символов
function npcs:dialog/build_substring
