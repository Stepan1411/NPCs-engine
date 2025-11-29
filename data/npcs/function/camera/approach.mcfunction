# Плавное приближение камеры к NPC

# Найти ближайшего манекена
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s run tp @a[scores={npc.camera_state=1..},limit=1,sort=nearest] ~ ~1.6 ~

# Эффект приближения
execute if score @s npc.camera_time matches 1 run effect clear @s minecraft:blindness
