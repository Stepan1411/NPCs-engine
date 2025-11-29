# Начало выбора в диалоге
# Вызывается когда строка начинается с [CHOICE]

# Установить состояние выбора
scoreboard players set @s npc.choice_state 1
scoreboard players set @s npc.choice_selected 0

# Сохранить предыдущие значения движения для отслеживания A/D
scoreboard players operation @s npc.move_left = @s npc.temp
scoreboard players operation @s npc.move_right = @s npc.temp
