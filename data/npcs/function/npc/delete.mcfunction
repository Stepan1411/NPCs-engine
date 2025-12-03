# Удаление NPC (макрос)
# Использование: function npcs:npc/delete {npc_id:1}

# Удаление манекена
$kill @e[type=minecraft:mannequin,tag=npc.mannequin,scores={npc.id=$(npc_id)}]

# Удаление маркера
$kill @e[type=marker,tag=npc.entity,scores={npc.id=$(npc_id)}]

# Удаление interaction
$kill @e[type=interaction,tag=npc.interaction,scores={npc.id=$(npc_id)}]

# Удаление диалогов из storage
$data remove storage npcs:dialogs npc_$(npc_id)

$execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC #$(npc_id) удалён!","color":"red"}]
$execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"NPC #$(npc_id) deleted!","color":"red"}]

# Обновить список
function npcs:npc/list
