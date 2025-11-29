# Проверить тип строки и показать соответственно (макрос)

# Очистить старые данные
data remove storage npcs:temp current_line

# Получить строку
$data modify storage npcs:temp current_line set from storage npcs:current_dialog lines[$(line_index)]

# Проверить есть ли поле type:"choice"
execute if data storage npcs:temp current_line.type run function npcs:dialog/show_choice_line
execute unless data storage npcs:temp current_line.type run function npcs:dialog/show_line_at_npc
