# Открытие редактора NPC

# Установка режима редактора
scoreboard players set @s npc.editor 1
scoreboard players set @s npc.menu_point 1

# Сохранение позиции игрока
execute store result storage npcs:temp editor.pos.x double 1 run data get entity @s Pos[0]
execute store result storage npcs:temp editor.pos.y double 1 run data get entity @s Pos[1]
execute store result storage npcs:temp editor.pos.z double 1 run data get entity @s Pos[2]

# Выдача инструментов для управления (9 удочек для всех слотов)
clear @s carrot_on_a_stick
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.5 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.6 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.7 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]
item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name='{"text":"NPC Editor Tool","color":"aqua","italic":false}',lore=['{"text":"Колесико мыши - навигация","color":"gray","italic":false}','{"text":"ПКМ - выбор","color":"gray","italic":false}']]

# Установка bossbar
bossbar set npcs:editor players @s
bossbar set npcs:editor value 0

tellraw @s ""
tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор открыт!","color":"green"}]
tellraw @s [{"text":"Используйте колесико мыши для навигации и ПКМ для выбора","color":"gray"}]
tellraw @s ""
