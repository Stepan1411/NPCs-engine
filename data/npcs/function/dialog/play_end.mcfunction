# Завершение проигрывания диалога

# Удаление камеры
kill @e[type=minecraft:marker,tag=npc.camera]

# Сброс состояния
scoreboard players set @s npc.dialog_state 0
scoreboard players set @s npc.dialog_line 0
scoreboard players set @s npc.current_npc 0

# Удаление text_display
kill @e[type=text_display,tag=npc.typing_text]

# Звук завершения
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
