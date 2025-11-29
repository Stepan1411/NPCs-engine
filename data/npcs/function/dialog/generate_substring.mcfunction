# Генерация подстроки через макрос

# Инициализация подстроки
data modify storage npcs:temp substring set value ""

# Копируем нужное количество символов
data modify storage npcs:temp build_chars set from storage npcs:temp current_line.chars

# Собираем строку посимвольно
execute store result storage npcs:temp build_index int 1 run scoreboard players get #char_index npc.temp
function npcs:dialog/build_string_loop

# Обновляем display
function npcs:dialog/update_display_macro with storage npcs:temp
