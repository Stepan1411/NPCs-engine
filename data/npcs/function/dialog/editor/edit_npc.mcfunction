# Редактирование диалогов NPC
# Использование: function npcs:dialog/editor/edit_npc {npc_id:1}

# Сохранение ID редактируемого NPC
$scoreboard players set @s npc.editing_npc $(npc_id)

# Загрузка диалогов
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

tellraw @s ""
$execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактирование диалогов NPC #$(npc_id)","color":"yellow"}]
$execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Editing dialogs for NPC #$(npc_id)","color":"yellow"}]
tellraw @s ""

# Показать список диалогов
function npcs:dialog/editor/show_dialog_list

tellraw @s ""
$execute if score localization l matches 1 run tellraw @s [{"text":"[➕ Строка]","color":"green","click_event":{"action":"suggest_command","command":"/function npcs:dialog/editor/add_line {npc_id:$(npc_id),text:\"Текст\"}"}},{"text":"  [🔀 Выбор]","color":"gold","click_event":{"action":"suggest_command","command":"/function npcs:dialog/editor/add_choice {npc_id:$(npc_id),text:\"Вопрос\",choices:[\"Да\",\"Нет\"]}"}}]
$execute if score localization l matches 2 run tellraw @s [{"text":"[➕ Line]","color":"green","click_event":{"action":"suggest_command","command":"/function npcs:dialog/editor/add_line {npc_id:$(npc_id),text:\"Text\"}"}},{"text":"  [🔀 Choice]","color":"gold","click_event":{"action":"suggest_command","command":"/function npcs:dialog/editor/add_choice {npc_id:$(npc_id),text:\"Question\",choices:[\"Yes\",\"No\"]}"}}]
tellraw @s ""
