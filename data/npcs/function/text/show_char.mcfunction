# Показать текст до определённого символа с курсором

# Получаем подстроку через макрос
$data modify storage npcs:typing display_text set string storage npcs:typing current_text 0 $(index)

# Обновляем display с курсором
function npcs:text/update_with_cursor with storage npcs:typing
