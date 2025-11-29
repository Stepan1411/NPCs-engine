# Обновление редактора

# Отображение меню
function npcs:editor/menu

# Обработка смены слота (колесико мыши)
# Сохраняем текущий слот и сравниваем с предыдущим
execute store result score #current_slot npc.temp run data get entity @s SelectedItemSlot
scoreboard players add #current_slot npc.temp 1

# Проверяем изменение слота
execute unless score #current_slot npc.temp = @s npc.menu_point run function npcs:editor/change_menu_point

# Обработка ПКМ
execute if score @s npc.use matches 1.. run function npcs:editor/select_action

# Сброс cooldown
execute if score @s npc.cooldown matches 1.. run scoreboard players remove @s npc.cooldown 1
