# Обновление диалога

# Телепортировать игрока в маркер камеры и смотреть на text_display
execute if score @s npc.dialog_state matches 1.. at @e[type=minecraft:marker,tag=npc.camera,limit=1,sort=nearest] run tp @s ~ ~ ~ 

# Обновление позиции text_display
function npcs:dialog/update_text_position

# Плавный набор текста
execute if score @s npc.dialog_state matches 1 run function npcs:dialog/type_text

# Обновление таймера (каждый тик)
scoreboard players add @s npc.dialog_char 1
