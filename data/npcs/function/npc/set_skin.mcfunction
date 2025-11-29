# Установить скин NPC по имени игрока (макрос)
# Использование: function npcs:npc/set_skin {npc_id:1,name:"Notch"}

# Установить профиль манекену
$data modify entity @e[type=minecraft:mannequin,tag=npc.mannequin,scores={npc.id=$(npc_id)},limit=1] profile set value {name:"$(name)"}

$tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"Скин NPC #$(npc_id) установлен: $(name)","color":"green"}]
