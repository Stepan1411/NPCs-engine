# Применить подстроку к text_display с курсором
data modify storage npcs:temp display_text set from storage npcs:temp substring
data modify storage npcs:temp display_text set value '{"text":"","extra":[{"nbt":"substring","storage":"npcs:temp"},{"text":"█","color":"white"}]}'
execute run data modify entity @s text set value '{"nbt":"substring","storage":"npcs:temp","extra":[{"text":"█"}]}'
