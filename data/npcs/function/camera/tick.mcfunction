# Обновление камеры

# Увеличение времени
scoreboard players add @s npc.camera_time 1

# Плавное приближение к NPC (первые 20 тиков)
execute if score @s npc.camera_time matches 1..20 run function npcs:camera/approach

# Позиционирование камеры сбоку от NPC
execute if score @s npc.camera_time matches 21.. run function npcs:camera/position_side
