# Показать подстроку текста с курсором (макрос)
$data modify storage npcs:temp substring set string storage npcs:typing current_text 0 $(char_index)

# Применить к text_display
execute as @e[type=text_display,tag=npc.typing_text,limit=1] run function npcs:text/set_text_with_cursor
