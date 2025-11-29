# Создание NPC-манекена

# Получение следующего ID
execute store result score #next_id npc.temp run data get storage npcs:data next_npc_id
execute unless data storage npcs:data next_npc_id run scoreboard players set #next_id npc.temp 1

# Создание маркера NPC
summon marker ~ ~ ~ {Tags:["npc.new","npc.entity"],CustomName:'{"text":"NPC Mannequin"}'}

# Создание манекена (неподвижный)
summon minecraft:mannequin ~ ~ ~ {Tags:["npc.mannequin","npc.new_mannequin"],CustomName:'{"text":"NPC"}',NoAI:1b,Invulnerable:1b,NoGravity:1b,Silent:1b}

# Создание нескольких interaction entity для клика (покрывают всё тело)
summon interaction ~ ~ ~ {Tags:["npc.interaction","npc.new_interaction"],width:1.2f,height:2.0f,response:1b}
summon interaction ~ ~1 ~ {Tags:["npc.interaction","npc.new_interaction"],width:1.2f,height:1.0f,response:1b}

# Установка данных
execute as @e[type=marker,tag=npc.new,limit=1] run function npcs:npc/setup_player

# Увеличение счетчика
scoreboard players add #next_id npc.temp 1
execute store result storage npcs:data next_npc_id int 1 run scoreboard players get #next_id npc.temp

tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC-манекен создан!","color":"green"}]
