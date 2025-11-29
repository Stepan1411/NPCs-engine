# Уведомление об обновлении (макрос)

tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Строка обновлена!","color":"green"}]

# Обновить список
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
