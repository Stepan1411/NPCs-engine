# Подтверждение выбора (пробел/прыжок)

# Проверка cooldown
execute if score @s npc.cooldown matches 1.. run return 0

# Сохранить выбранный вариант в storage
execute store result storage npcs:temp selected_choice int 1 run scoreboard players get @s npc.choice_selected

# Звук подтверждения
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

# Сбросить состояние выбора
scoreboard players set @s npc.choice_state 0
scoreboard players set @s npc.cooldown 10

# Перейти к следующей строке диалога
function npcs:dialog/show_next_line
