# Закрытие редактора

# Сброс режима редактора
scoreboard players set @s npc.editor 0
scoreboard players set @s npc.menu_point 0

# Удаление bossbar
bossbar set npcs:editor players

# Удаление всех инструментов
clear @s carrot_on_a_stick

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор закрыт","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Editor closed","color":"yellow"}]
