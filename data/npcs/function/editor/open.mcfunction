# Открытие редактора NPC

# Установка режима редактора
scoreboard players set @s npc.editor 1
scoreboard players set @s npc.menu_point 1

# Сохранение позиции игрока
execute store result storage npcs:temp editor.pos.x double 1 run data get entity @s Pos[0]
execute store result storage npcs:temp editor.pos.y double 1 run data get entity @s Pos[1]
execute store result storage npcs:temp editor.pos.z double 1 run data get entity @s Pos[2]

# Выдача инструментов для управления (локализованная)
function npcs:editor/give_tools

# Установка bossbar
bossbar set npcs:editor players @s
bossbar set npcs:editor value 0

tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор открыт!","color":"green"}]
execute if score localization l matches 1 run tellraw @s [{"text":"Используйте колесико мыши для навигации и ПКМ для выбора","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Editor opened!","color":"green"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Use mouse wheel to navigate and RMB to select","color":"gray"}]
tellraw @s ""
