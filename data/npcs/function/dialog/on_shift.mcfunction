# Обработка нажатия Shift во время диалога

# Проверка что диалог активен
execute unless score @s npc.dialog_state matches 1 run return 0

# Если активен выбор - игнорировать Shift
execute if score @s npc.choice_state matches 1.. run return 0

# Проверка cooldown
execute if score @s npc.cooldown matches 1.. run return 0

# Установка cooldown (10 тиков = 0.5 секунды)
scoreboard players set @s npc.cooldown 10

# Если текст ещё печатается - пропустить печать (показать весь текст)
execute if score @s npc.typing_state matches 1.. run function npcs:dialog/skip_typing
execute if score @s npc.typing_state matches 1.. run return 0

# Показать следующую строку
function npcs:dialog/show_next_line

# Звук перехода
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
