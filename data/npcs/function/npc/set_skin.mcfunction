# Установить скин NPC по имени игрока (макрос)
# Использование: function npcs:npc/set_skin {npc_id:1,name:"Notch"}

# Установить профиль манекену
$data modify entity @e[type=minecraft:mannequin,tag=npc.mannequin,scores={npc.id=$(npc_id)},limit=1] profile set value {name:"$(name)"}

$execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"Скин NPC #$(npc_id) установлен: $(name)","color":"green"}]
$execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"NPC #$(npc_id) skin set: $(name)","color":"green"}]
