# Показать список строк диалога

# Получить количество строк из массива
execute store result score #total npc.temp if data storage npcs:current_dialog lines[]

execute if score localization l matches 1 run tellraw @s [{"text":"Диалогов: ","color":"gray"},{"score":{"name":"#total","objective":"npc.temp"},"color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Dialogs: ","color":"gray"},{"score":{"name":"#total","objective":"npc.temp"},"color":"yellow"}]

execute if score #total npc.temp matches 0 if score localization l matches 1 run tellraw @s [{"text":"  Нет диалогов","color":"gray"}]
execute if score #total npc.temp matches 0 if score localization l matches 2 run tellraw @s [{"text":"  No dialogs","color":"gray"}]
execute if score #total npc.temp matches 1.. as @s run function npcs:dialog/editor/list_lines_loop
