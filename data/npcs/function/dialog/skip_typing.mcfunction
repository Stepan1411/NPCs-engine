# Пропустить печать - показать весь текст сразу

# Остановить печать
scoreboard players set @s npc.typing_state 0

# Показать полный текст
execute as @e[type=text_display,tag=npc.typing_text,limit=1] run function npcs:text/show_full_text

# Звук пропуска
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5
