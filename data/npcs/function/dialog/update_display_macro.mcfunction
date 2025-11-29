# Макрос для обновления text_display с подстрокой

$data merge entity @e[type=text_display,tag=npc.dialog_text,limit=1] {text:'"$(substring)█"'}
