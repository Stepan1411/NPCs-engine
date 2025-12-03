# Запуск проигрывания диалога NPC
# Использование: function npcs:dialog/play_start {npc_id:1}

# Сохранение ID NPC
$scoreboard players set @s npc.current_npc $(npc_id)

# Загрузка диалогов NPC
$function npcs:dialog/load_npc_dialogs {npc_id:$(npc_id)}

# Установка начальных значений
scoreboard players set @s npc.dialog_state 1
scoreboard players set @s npc.dialog_line 0

# Запуск первой строки
function npcs:dialog/show_next_line

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Диалог начат. Нажимайте Shift для продолжения.","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"Dialog started. Press Shift to continue.","color":"gray"}]
