# Переместить NPC к игроку (макрос)
# Использование: function npcs:npc/move_to_player {npc_id:1}

# Получить позицию и поворот игрока
execute as @s run scoreboard players operation #player_rot npc.temp = @s npc.temp

# Переместить маркер к игроку
$execute as @e[type=marker,tag=npc.entity,scores={npc.id=$(npc_id)},limit=1] at @p run tp @s ~ ~ ~ ~ ~

# Переместить манекен к игроку с поворотом игрока
$execute at @p run tp @e[type=minecraft:mannequin,tag=npc.mannequin,scores={npc.id=$(npc_id)},limit=1] ~ ~ ~ ~ ~

# Переместить interaction
$execute at @p run tp @e[type=interaction,tag=npc.interaction,scores={npc.id=$(npc_id)}] ~ ~ ~

$tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"NPC #$(npc_id) перемещён","color":"green"}]

# Обновить список
function npcs:npc/list
