execute if entity @r[scores={waittimer=1..,playersleft=..3}] run tellraw @a {"text":"Cannot start game with fewer than four players.","color":"red"}
execute if entity @r[scores={waittimer=1..,playersleft=..3}] run scoreboard players set lobbytimer global 1
execute if entity @r[scores={waittimer=1..,playersleft=..3}] run bossbar set 4 players @a
execute if entity @r[scores={waittimer=1..,playersleft=..3}] run scoreboard players set waittimer global 0
execute if entity @r[scores={waittimer=1..,playersleft=..3}] run scoreboard players set @a waittimer 0
execute if entity @r[scores={waittimer=1..,playersleft=16..,tournament=0}] run tellraw @a {"text":"Cannot start game with greater than 15 players unless in tournament mode.","color":"red"}
execute if entity @r[scores={waittimer=1..,playersleft=16..,tournament=0}] run scoreboard players set lobbytimer global 1
execute if entity @r[scores={waittimer=1..,playersleft=16..,tournament=0}] run bossbar set 4 players @a
execute if entity @r[scores={waittimer=1..,playersleft=16..,tournament=0}] run scoreboard players set waittimer global 0
execute if entity @r[scores={waittimer=1..,playersleft=16..,tournament=0}] run scoreboard players set @a waittimer 0
execute if entity @r[scores={waittimer=1..,playersleft=101..,tournament=1}] run tellraw @a {"text":"Cannot start game with greater than 100 players.","color":"red"}
execute if entity @r[scores={waittimer=1..,playersleft=101..,tournament=1}] run scoreboard players set lobbytimer global 1
execute if entity @r[scores={waittimer=1..,playersleft=101..,tournament=1}] run bossbar set 4 players @a
execute if entity @r[scores={waittimer=1..,playersleft=101..,tournament=1}] run scoreboard players set waittimer global 0
execute if entity @r[scores={waittimer=1..,playersleft=101..,tournament=1}] run scoreboard players set @a waittimer 0
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run scoreboard players add @a waittime 1
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run scoreboard players add @a waittimen 1
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run scoreboard players set Bar waittime 150
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run bossbar set 4 players
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run bossbar set 3 name "Game Starting Now"
execute if entity @r[scores={waittimer=1..,playersleft=4..}] run scoreboard players operation Bar waittime -= @r waittime
execute if entity @r[scores={waittimer=1..,playersleft=4..}] store result bossbar 3 value run scoreboard players get Bar waittime
execute if entity @r[scores={waittimen=11..,waittimer=1..,playersleft=4..}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 100 2
execute if entity @r[scores={waittimen=11..,waittimer=1..,playersleft=4..}] run scoreboard players set @a waittimen 0
execute if entity @r[scores={waittime=150..,waittimer=1..,playersleft=4..}] run scoreboard players set starttimer global 1
execute if entity @r[scores={waittime=150..,waittimer=1..,playersleft=4..}] run scoreboard players set waittimer global 0