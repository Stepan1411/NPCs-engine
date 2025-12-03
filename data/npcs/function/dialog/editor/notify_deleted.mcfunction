# Уведомление об удалении (макрос)

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Строка удалена!","color":"red"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Line deleted!","color":"red"}]

# Обновить список
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
