# Создание text_display и начало печати

# Удаление старого text_display
kill @e[type=text_display,tag=npc.typing_text]

# Создание text_display на текущей позиции
summon text_display ~ ~ ~ {Tags:["npc.typing_text","npc.new_text"],text:'""',billboard:"center",background:0,see_through:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}

# Установка начальных значений для ближайшего игрока
scoreboard players set @p npc.typing_state 1
scoreboard players set @p npc.typing_char 0

# Звук начала
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.5
