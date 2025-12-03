# Начало диалога с NPC

# Загрузка данных диалога
function npcs:dialog/load_dialog_data

# Установка состояния диалога
scoreboard players set @s npc.dialog_state 1
scoreboard players set @s npc.dialog_line 0
scoreboard players set @s npc.dialog_char 0

# Создание text_display для диалога сбоку от NPC
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s run summon text_display ~1.5 ~2 ~ {Tags:["npc.dialog_text"],text:'""',billboard:"center",background:0,see_through:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}

# Эффект начала диалога
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Диалог начат. Нажимайте Shift для продолжения.","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Dialog started. Press Shift to continue.","color":"gray"}]
