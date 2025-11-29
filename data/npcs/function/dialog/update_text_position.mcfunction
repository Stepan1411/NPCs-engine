# Обновление позиции text_display относительно NPC

# Телепортация text_display сбоку от NPC
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s run tp @e[type=text_display,tag=npc.dialog_text,limit=1] ~1.5 ~2 ~
