# NPC Engine Tick

# Обработка смены языка через trigger
execute as @a[scores={npcs_engine_localization=1}] run function npcs:localization/set_russian
execute as @a[scores={npcs_engine_localization=2}] run function npcs:localization/set_english

# Обновление редактора
execute as @a[scores={npc.editor=1..}] at @s run function npcs:editor/tick

# Обновление диалогов
execute as @a[scores={npc.dialog_state=1..}] at @s run function npcs:dialog/tick

# Обнаружение Shift для переключения диалогов
execute as @a[scores={npc.dialog_state=1..}] if predicate npcs:is_sneaking run function npcs:dialog/on_shift

# Обновление печати текста
execute as @a[scores={npc.typing_state=1..}] at @s run function npcs:text/tick

# Обновление выбора в диалоге
execute as @a[scores={npc.choice_state=1..}] run function npcs:dialog/choice/tick

# Фиксация позиции манекенов (телепортация к маркеру)
execute as @e[type=marker,tag=npc.entity] at @s run tp @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest,distance=..3] ~ ~ ~ ~ ~
execute as @e[type=marker,tag=npc.entity] at @s run tp @e[type=interaction,tag=npc.interaction,distance=..3] ~ ~ ~

# Проверка клика на NPC (interaction entity)
execute as @e[type=interaction,tag=npc.interaction,nbt={interaction:{}}] at @s run function npcs:npc/check_interaction

# Уменьшение cooldown
execute as @a[scores={npc.cooldown=1..}] run scoreboard players remove @s npc.cooldown 1
