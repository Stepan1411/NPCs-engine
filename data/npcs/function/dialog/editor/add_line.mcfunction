# Добавление новой строки диалога (макрос)
# Использование: function npcs:dialog/editor/add_line {npc_id:1,text:"Текст"}

# Загрузка диалогов
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

# Гарантируем что массив lines существует
function npcs:dialog/editor/init_lines

# Сохраняем текст во временное хранилище
$data modify storage npcs:temp new_line set value "$(text)"

# Добавление строки из временного хранилища
function npcs:dialog/editor/append_line

# Сохранение в отдельный ключ NPC
$function npcs:dialog/save_npc_dialogs {npc_id:$(npc_id)}

# Вызов функции уведомления
$function npcs:dialog/editor/notify_added {npc_id:$(npc_id)}
