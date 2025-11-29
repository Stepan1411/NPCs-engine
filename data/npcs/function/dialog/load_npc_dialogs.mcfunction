# Загрузка диалогов NPC из storage

# Полностью очищаем current_dialog через вспомогательную функцию
function npcs:dialog/clear_current

# Копируем данные NPC если существуют
$function npcs:dialog/try_load_npc {npc_id:$(npc_id)}
