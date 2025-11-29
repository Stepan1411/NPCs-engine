# Переместить выбор вправо

# Увеличить выбранный индекс
scoreboard players add @s npc.choice_selected 1

# Если больше максимума - перейти к первому
execute if score @s npc.choice_selected >= @s npc.choice_count run scoreboard players set @s npc.choice_selected 0

# Cooldown чтобы не переключалось слишком быстро
scoreboard players set @s npc.cooldown 5

# Звук переключения
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
