# Уведомление о добавлении выбора (макрос)

$execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"Выбор добавлен! NPC #$(npc_id)","color":"green"}]
$execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua"},{"text":"Choice added! NPC #$(npc_id)","color":"green"}]
$function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}
