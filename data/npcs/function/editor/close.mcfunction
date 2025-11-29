# Закрытие редактора

# Сброс режима редактора
scoreboard players set @s npc.editor 0
scoreboard players set @s npc.menu_point 0

# Удаление bossbar
bossbar set npcs:editor players

# Удаление всех инструментов
clear @s carrot_on_a_stick

tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор закрыт","color":"yellow"}]
