# Создание подстроки через макрос (упрощённая версия)

# Просто берём нужное количество символов из массива
execute store result storage npcs:temp char_index int 1 run scoreboard players get #char_index npc.temp

# Собираем подстроку
function npcs:dialog/build_substring
