# Удаление строки диалога (макрос)
# Использование: function npcs:dialog/editor/delete_line {npc_id:1,index:0}

# Загрузка диалогов
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

# Удаление строки
$data remove storage npcs:current_dialog lines[$(index)]

# Сохранение
$data modify storage npcs:dialogs npc_$(npc_id) set from storage npcs:current_dialog

# Вызов функции уведомления
$function npcs:dialog/editor/notify_deleted {npc_id:$(npc_id)}
