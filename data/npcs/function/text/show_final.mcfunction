# Показать финальный текст без курсора

# Получаем полный текст из storage
data modify storage npcs:typing display_text set from storage npcs:typing current_text

# Обновляем display
function npcs:text/update_final with storage npcs:typing

# Завершение печати
scoreboard players set @s npc.typing_state 0

# Звук завершения
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Удаление через 5 секунд
schedule function npcs:text/cleanup 100t
