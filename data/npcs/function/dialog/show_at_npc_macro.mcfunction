# Показать текст сбоку от NPC (макрос)

# Найти NPC по ID и показать текст справа от него
$execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s positioned ^3 ^1 ^ run function npcs:text/show {text:"$(current_line_text)"}
