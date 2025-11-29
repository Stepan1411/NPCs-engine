# Обновление выбора каждый тик

# Проверка cooldown
execute if score @s npc.cooldown matches 1.. run function npcs:dialog/choice/update_display
execute if score @s npc.cooldown matches 1.. run return 0

# Сохранить текущий поворот для сравнения
execute store result score #current_rot npc.temp run data get entity @s Rotation[0] 1

# Вычислить разницу поворота (нужно больше 5 градусов)
scoreboard players operation #diff npc.temp = #current_rot npc.temp
scoreboard players operation #diff npc.temp -= @s npc.temp

# Проверка поворота влево (A) - разница < -5
execute if score #diff npc.temp matches ..-5 run function npcs:dialog/choice/move_left
execute if score #diff npc.temp matches ..-5 run scoreboard players operation @s npc.temp = #current_rot npc.temp

# Проверка поворота вправо (D) - разница > 5
execute if score #diff npc.temp matches 5.. run function npcs:dialog/choice/move_right
execute if score #diff npc.temp matches 5.. run scoreboard players operation @s npc.temp = #current_rot npc.temp

# Проверка нажатия пробела (прыжок) - подтверждение выбора
execute if score @s npc.jump matches 1.. run function npcs:dialog/choice/confirm
scoreboard players set @s npc.jump 0

# Обновить отображение выбора в actionbar
function npcs:dialog/choice/update_display
