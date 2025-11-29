# Показать кнопку NPC (макрос)

$tellraw @a[scores={npc.editor=1..}] [{"text":"  [NPC #$(npc_id)]  ","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function npcs:dialog/editor/edit_npc {npc_id:$(npc_id)}"}}]
