# Уведомление о добавлении (макрос)

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Строка добавлена!","color":"green"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Line added!","color":"green"}]

# Обновить список
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
