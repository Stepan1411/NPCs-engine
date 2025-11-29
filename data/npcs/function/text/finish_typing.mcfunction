# Завершение печати текста

# Показать полный текст
execute as @e[type=text_display,tag=npc.typing_text,limit=1] run data modify entity @s text set from storage npcs:typing current_text

# Остановить печать
scoreboard players set @s npc.typing_state 0

# Звук завершения
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.3 1.2
