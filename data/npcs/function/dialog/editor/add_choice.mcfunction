# Добавление строки с выбором (макрос)
# Использование: function npcs:dialog/editor/add_choice {npc_id:1,text:"Вопрос",choices:["Да","Нет"]}

# Загрузка диалогов
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

# Гарантируем что массив lines существует
function npcs:dialog/editor/init_lines

# Создаём объект выбора и добавляем в lines
$data modify storage npcs:temp new_choice set value {type:"choice",text:"$(text)",choices:$(choices)}

# Добавление в массив
data modify storage npcs:current_dialog lines append from storage npcs:temp new_choice

# Сохранение
$function npcs:dialog/save_npc_dialogs {npc_id:$(npc_id)}

# Уведомление и обновление
$function npcs:dialog/editor/notify_choice_added {npc_id:$(npc_id)}
