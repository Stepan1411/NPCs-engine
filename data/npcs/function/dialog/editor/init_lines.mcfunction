# Инициализация массива lines если не существует
execute unless data storage npcs:current_dialog lines run function npcs:dialog/editor/create_empty_lines
