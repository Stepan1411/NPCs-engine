# Показать финальный текст без курсора

function npcs:dialog/update_display_final with storage npcs:temp current_line

# Показать подсказку для продолжения (только если не активен выбор)
execute unless score @s npc.choice_state matches 1.. if score localization l matches 1 run title @s actionbar [{"text":"[Shift] ","color":"yellow"},{"text":"Продолжить","color":"gray"}]
execute unless score @s npc.choice_state matches 1.. if score localization l matches 2 run title @s actionbar [{"text":"[Shift] ","color":"yellow"},{"text":"Continue","color":"gray"}]
