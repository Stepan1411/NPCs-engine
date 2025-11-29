# Позиционирование камеры сбоку от NPC

# Телепортация камеры сбоку (справа от NPC) - ищем манекена
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s positioned ~2 ~1.6 ~ run tp @a[scores={npc.camera_state=1..},limit=1,sort=nearest] ~ ~ ~ facing entity @s eyes

# Небольшое покачивание камеры для живости
execute if score @s npc.camera_time matches 21..40 run tp @s ~ ~0.01 ~
execute if score @s npc.camera_time matches 41..60 run tp @s ~ ~-0.01 ~
execute if score @s npc.camera_time matches 61.. run scoreboard players set @s npc.camera_time 21
