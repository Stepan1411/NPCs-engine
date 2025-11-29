# Обновление отображаемого текста

# Вычислить индекс символа (каждые 2 тика = 1 символ)
scoreboard players operation #char_idx npc.temp = @s npc.typing_char
scoreboard players operation #char_idx npc.temp /= #2 npc.temp

# Сохранить индекс в storage для макроса
execute store result storage npcs:temp char_index int 1 run scoreboard players get #char_idx npc.temp

# Получить длину текста
execute store result score #text_len npc.temp run data get storage npcs:typing current_text

# Если индекс >= длины текста - завершить печать
execute if score #char_idx npc.temp >= #text_len npc.temp run function npcs:text/finish_typing
execute if score #char_idx npc.temp >= #text_len npc.temp run return 0

# Показать текст с курсором через макрос
function npcs:text/show_substring with storage npcs:temp
