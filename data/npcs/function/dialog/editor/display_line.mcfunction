# Отображение строки с кнопками (макрос)

$tellraw @s [{"text":"  $(index). ","color":"gray"},{"nbt":"line_text","storage":"npcs:temp","color":"white"},{"text":"  [✏ Редактировать]  ","color":"yellow","bold":true,"click_event":{"action":"suggest_command","command":"/function npcs:dialog/editor/edit_line {npc_id:$(npc_id),index:$(index),text:\"\"}"}},{"text":"  [🗑 Удалить]  ","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function npcs:dialog/editor/delete_line {npc_id:$(npc_id),index:$(index)}"}}]
