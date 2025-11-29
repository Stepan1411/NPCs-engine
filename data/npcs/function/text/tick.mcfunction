# Обновление печати текста

# Обновление позиции text_display (следует за NPC)
execute store result score #npc_id npc.temp run scoreboard players get @s npc.current_npc
execute as @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest] at @s positioned ^3 ^1 ^ run tp @e[type=text_display,tag=npc.typing_text,limit=1,sort=nearest] ~ ~ ~

# Увеличение счётчика символов
scoreboard players add @s npc.typing_char 1

# Обновление отображаемого текста
function npcs:text/update_display

# Звук печати (каждые 2 тика)
execute if score @s npc.typing_char matches 2 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 4 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 6 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 8 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 10 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 12 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 14 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 16 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 18 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 20 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 22 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 24 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 26 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 28 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
execute if score @s npc.typing_char matches 30 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.3 1.5
