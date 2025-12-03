# NPC Engine - Set Language to English
# Установить английский язык

# Set language score to 2 (English)
scoreboard players set localization l 2

# Mark that localization has been set by user
scoreboard players set #localization_set npc.temp 1

# Display confirmation message in English
tellraw @s ""
tellraw @s [{"text":"[NPC Engine] ","color":"aqua"},{"text":"Language changed to ","color":"green"},{"text":"English","color":"gold","bold":true}]
tellraw @s ""

# Reset trigger score
scoreboard players reset @s npcs_engine_localization
scoreboard players enable @s npcs_engine_localization

# Play sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
