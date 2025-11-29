# Показать текст с плавной печатью
# Использование: function npcs:text/show {text:"Привет, мир!"}

# Сохранение текста в storage
$data modify storage npcs:typing current_text set value "$(text)"

# Вызов функции создания
function npcs:text/create
