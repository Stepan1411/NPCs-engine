# Построение подстроки из готового массива

# Берём готовую подстроку по индексу (индекс начинается с 0)
scoreboard players remove #char_index npc.temp 1

# Копируем подстроку из массива
execute if score #char_index npc.temp matches 0 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[0]
execute if score #char_index npc.temp matches 1 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[1]
execute if score #char_index npc.temp matches 2 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[2]
execute if score #char_index npc.temp matches 3 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[3]
execute if score #char_index npc.temp matches 4 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[4]
execute if score #char_index npc.temp matches 5 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[5]
execute if score #char_index npc.temp matches 6 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[6]
execute if score #char_index npc.temp matches 7 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[7]
execute if score #char_index npc.temp matches 8 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[8]
execute if score #char_index npc.temp matches 9 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[9]
execute if score #char_index npc.temp matches 10 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[10]
execute if score #char_index npc.temp matches 11 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[11]
execute if score #char_index npc.temp matches 12 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[12]
execute if score #char_index npc.temp matches 13 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[13]
execute if score #char_index npc.temp matches 14 run data modify storage npcs:temp substring set from storage npcs:temp current_line.substrings[14]

# Восстанавливаем индекс
scoreboard players add #char_index npc.temp 1

# Обновляем display
function npcs:dialog/update_display_macro with storage npcs:temp

