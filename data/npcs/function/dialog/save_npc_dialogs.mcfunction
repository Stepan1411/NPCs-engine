# Сохранение диалогов NPC в storage (макрос)
$data merge storage npcs:dialogs {npc_$(npc_id):{}}
$data modify storage npcs:dialogs npc_$(npc_id).lines set from storage npcs:current_dialog lines
