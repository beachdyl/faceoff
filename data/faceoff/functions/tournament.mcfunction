execute unless entity @r[scores={gamestarted=1..}] run worldborder set 21
execute unless entity @r[scores={gamestarted=1..}] run worldborder warning time 15
execute unless entity @r[scores={gamestarted=1..}] run bossbar set 1 max 1200
execute unless entity @r[scores={gamestarted=1..}] run bossbar set 2 max 6300
execute unless entity @r[scores={gamestarted=1..}] run scoreboard players set tournament global 1
execute unless entity @r[scores={gamestarted=1..}] run tellraw @a {"text":"Tournament mode has been enabled! To disable it, you must run Initial Setup again.","color":"green"}
execute if entity @r[scores={gamestarted=1..}] run tellraw @a {"text":"Tournament mode cannot be enabled once the game has started! To play in Tournament mode, you must run Initial Setup again.","color":"red"}