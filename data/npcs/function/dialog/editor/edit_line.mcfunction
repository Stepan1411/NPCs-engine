# Редактирование строки диалога (макрос)
# Использование: function npcs:dialog/editor/edit_line {npc_id:1,index:0,text:"Новый текст"}

# Загрузка диалогов
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

# Сохранение текста во временное хранилище
$data modify storage npcs:temp edit_line_text set value "$(text)"

# Обновление строки из временного хранилища
$data modify storage npcs:current_dialog.lines[$(index)] set from storage npcs:temp edit_line_text

# Сохранение
$data modify storage npcs:dialogs npc_$(npc_id) set from storage npcs:current_dialog

# Вызов функции уведомления
$function npcs:dialog/editor/notify_edited {npc_id:$(npc_id)}
