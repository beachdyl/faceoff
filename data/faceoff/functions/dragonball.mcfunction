tp @r[scores={db=1..}] @r[scores={p=1..}]
gamemode survival @r[scores={db=1..}]
clear @r[scores={db=1..}]
team join r @r[scores={db=1..,team=1}]
team join g @r[scores={db=1..,team=2}]
team join b @r[scores={db=1..,team=3}]
team join a @r[scores={db=1..,team=4}]
team join a @r[scores={db=1..,team=0}]
execute if entity @r[scores={p=1..,team=1}] as @r[scores={p=1..,team=1}] run team join r @r[scores={db=1..}]
execute if entity @r[scores={p=1..,team=2}] as @r[scores={p=1..,team=2}] run team join g @r[scores={db=1..}]
execute if entity @r[scores={p=1..,team=3}] as @r[scores={p=1..,team=3}] run team join b @r[scores={db=1..}]
scoreboard players set @a p 0
title @a title {"text":"Dragonball!","color":"dark_purple"}
title @a subtitle [{"selector":"@r[scores={db=1..}]"},{"text":" has been resurrected!","color":"light_purple"}]
advancement grant @r[scores={db=1..}] only minecraft:adventure/dragonball
scoreboard players set @a db 0