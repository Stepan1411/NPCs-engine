# Загрузка данных диалога (тестовый пример)

# Диалог 1 - строка 1 с подстроками для печати
data modify storage npcs:dialogs test.lines[0] set value {text:"Привет, путник!",length:15,substrings:["П","Пр","При","Прив","Приве","Привет","Привет,","Привет, ","Привет, п","Привет, пу","Привет, пут","Привет, путн","Привет, путни","Привет, путник","Привет, путник!"]}

# Диалог 1 - строка 2
data modify storage npcs:dialogs test.lines[1] set value {text:"Как дела?",length:9,substrings:["К","Ка","Как","Как ","Как д","Как де","Как дел","Как дела","Как дела?"]}

# Диалог 1 - строка 3
data modify storage npcs:dialogs test.lines[2] set value {text:"До свидания!",length:12,substrings:["Д","До","До ","До с","До св","До сви","До свид","До свида","До свидан","До свидани","До свидания","До свидания!"]}

# Общее количество строк
data modify storage npcs:dialogs test.total_lines set value 3
