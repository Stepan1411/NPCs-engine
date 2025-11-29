# Уведомление об удалении (макрос)

tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Строка удалена!","color":"red"}]

# Обновить список
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
