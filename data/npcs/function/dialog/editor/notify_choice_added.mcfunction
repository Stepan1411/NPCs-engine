# Уведомление о добавлении выбора (макрос)

$tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"Выбор добавлен! NPC #$(npc_id)","color":"green"}]
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
