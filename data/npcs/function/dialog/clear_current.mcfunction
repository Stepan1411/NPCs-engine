# Очистка current_dialog
data remove storage npcs:current_dialog lines
data remove storage npcs:current_dialog total_lines
data merge storage npcs:current_dialog {lines:[]}
