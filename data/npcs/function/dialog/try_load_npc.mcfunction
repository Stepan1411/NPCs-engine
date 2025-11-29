# Попытка загрузить диалоги NPC (макрос)

# Копируем lines из storage NPC в current_dialog
$data modify storage npcs:current_dialog lines set from storage npcs:dialogs npc_$(npc_id).lines
