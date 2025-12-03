# Завершение диалога

# Удаление камеры
kill @e[type=minecraft:marker,tag=npc.camera]

# Сброс состояния
scoreboard players set @s npc.dialog_state 0
scoreboard players set @s npc.dialog_line 0
scoreboard players set @s npc.dialog_char 0

# Удаление text_display
kill @e[type=text_display,tag=npc.dialog_text]

# Очистка title
title @s clear
title @s reset

# Звук завершения
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Диалог завершен","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Dialog ended","color":"gray"}]
