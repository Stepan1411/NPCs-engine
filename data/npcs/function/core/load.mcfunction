# NPC Engine Load

# Создание scoreboards
scoreboard objectives add npc.id dummy
scoreboard objectives add npc.editor dummy
scoreboard objectives add npc.menu_point dummy
scoreboard objectives add npc.cooldown dummy
scoreboard objectives add npc.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add npc.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add npc.dialog_id dummy
scoreboard objectives add npc.dialog_line dummy
scoreboard objectives add npc.dialog_char dummy
scoreboard objectives add npc.dialog_state dummy
scoreboard objectives add npc.camera_state dummy
scoreboard objectives add npc.camera_time dummy
scoreboard objectives add npc.temp dummy
scoreboard objectives add npc.entity_type dummy
scoreboard objectives add npc.typing_state dummy
scoreboard objectives add npc.typing_char dummy
scoreboard objectives add npc.typing_length dummy
scoreboard objectives add npc.current_npc dummy
scoreboard objectives add npc.editing_npc dummy
scoreboard objectives add npc.choice_state dummy
scoreboard objectives add npc.choice_selected dummy
scoreboard objectives add npc.choice_count dummy
scoreboard objectives add npc.move_left minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add npc.move_right minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add npc.jump minecraft.custom:minecraft.jump

# Создание bossbar для редактора
bossbar add npcs:editor {"text":"NPC Editor","color":"aqua"}
bossbar set npcs:editor color blue
bossbar set npcs:editor style notched_10
bossbar set npcs:editor max 100

# Инициализация пустого массива для копирования
data modify storage npcs:empty_array data set value []

# Инициализация констант
scoreboard players set #-1 npc.temp -1
scoreboard players set #0 npc.temp 0
scoreboard players set #1 npc.temp 1
scoreboard players set #2 npc.temp 2
scoreboard players set #20 npc.temp 20
scoreboard players set #100 npc.temp 100

# Сообщение об успешной загрузке
tellraw @a [{"text":"[NPC Engine] ","color":"aqua","bold":true},{"text":"Система загружена!","color":"green"}]
