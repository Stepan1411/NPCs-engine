# Начало проигрывания диалога

# Установка состояния диалога
scoreboard players set @s npc.dialog_state 1
scoreboard players set @s npc.dialog_line 0
scoreboard players set @s npc.typing_char 0

# Создать маркер для камеры относительно NPC (^2 ^1 ^3 от NPC)
execute at @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest,distance=..10] positioned ^3 ^0 ^3 run summon minecraft:marker ~ ~ ~ {Tags:["npc.camera"]}

# Эффект начала диалога
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5

# Показать первую строку
function npcs:dialog/show_next_line
