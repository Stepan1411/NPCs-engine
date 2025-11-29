# Переместить выбор влево

# Уменьшить выбранный индекс
scoreboard players remove @s npc.choice_selected 1

# Если меньше 0 - перейти к последнему
execute if score @s npc.choice_selected matches ..-1 run scoreboard players operation @s npc.choice_selected = @s npc.choice_count
execute if score @s npc.choice_selected matches ..-1 run scoreboard players remove @s npc.choice_selected 1

# Cooldown чтобы не переключалось слишком быстро
scoreboard players set @s npc.cooldown 5

# Звук переключения
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
