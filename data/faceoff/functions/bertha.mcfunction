#
# CLOCK
#
function faceoff:clock
function faceoff:playercount
#
# DAMAGEALERT
#
function faceoff:damagealert
#
# END
#
function faceoff:endofgame
#
#
# GLOBAL
#
#
function faceoff:globalvar
#
# HAUNT
#
function faceoff:haunt
#
# HELPME
#
function faceoff:helpme
#
# LAVA
#
function faceoff:lava
#
# LOBBY
#
function faceoff:lobby
#
# MENU
#
function faceoff:adminmenu
#
# PLAYERMENU
#
function faceoff:playermenu
#
# SHRINK
#
function faceoff:shrink
#
# START
#
function faceoff:start
function faceoff:startcount
#
# TWISTS
#
function faceoff:twists
#
#
# START (continued)
#
#
execute if score starttimer global matches 1.. run scoreboard players set @a kills 0
execute if score starttimer global matches 1.. run scoreboard players set @a mobkills 0
execute if score starttimer global matches 1.. run scoreboard players set wspawned global 0
execute if score starttimer global matches 1.. run scoreboard players set wbstage global 0
execute if score starttimer global matches 1.. run scoreboard players set starttimer global 0
#
#
# VIRUS
#
#
scoreboard players set @a[scores={infected=0}] virustime 0
scoreboard players set @a[gamemode=spectator] infected -1
execute if entity @r[scores={virusenabled=1,virusassigned=0,gamestarted=1}] run scoreboard players set @r[gamemode=survival,scores={infected=0}] infected 1
execute if entity @r[scores={virusenabled=1,virusassigned=0,gamestarted=1}] run scoreboard players set virusassigned global 1
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=1,virustime=1700}] [{"text":"[Virus]","color":"aqua"},{"text":" You don't feel well. You might have caught something.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=3000}] weakness 120 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=3000}] slowness 180 0 false
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=1,virustime=3250}] [{"text":"[Virus]","color":"aqua"},{"text":" You have caught the Mild strain of the Faceoff Virus.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=5400}] weakness 120 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=6000}] nausea 10 0 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=6600}] slowness 180 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=6800}] nausea 15 0 true
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=1,virustime=7400}] [{"text":"[Virus]","color":"aqua"},{"text":" Be careful who you come into contact with.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=7800}] weakness 90 2 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=8000}] nausea 10 1 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=9600}] weakness 45 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=10200}] slowness 90 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=10500}] weakness 75 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=1,virustime=11500}] nausea 7 0 true
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=1,virustime=12000}] [{"text":"[Virus]","color":"aqua"},{"text":" Your symptoms are gone, but the virus is not.","color":"white"}]
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=1,virustime=14400}] [{"text":"[Virus]","color":"aqua"},{"text":" You are now immune to the Faceoff Virus.","color":"white"}]
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=1500}] [{"text":"[Virus]","color":"aqua"},{"text":" You don't feel well. You might have caught something.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=2400}] weakness 60 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=2400}] slowness 90 1 false
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=3000}] [{"text":"[Virus]","color":"aqua"},{"text":" You have caught the Severe strain of the Faceoff Virus.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=3100}] poison 7 0 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=3500}] nausea 4 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=3600}] weakness 120 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=3800}] hunger 40 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=4200}] slowness 180 2 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=4360}] poison 6 1 true
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=4500}] [{"text":"[Virus]","color":"aqua"},{"text":" Be very careful who you come close to.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=4700}] blindness 4 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=4800}] poison 7 0 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=4900}] jump_boost 25 126 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=5140}] poison 5 1 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=5180}] blindness 4 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=5400}] blindness 5 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=5600}] poison 4 2 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=5800}] blindness 6 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=6000}] weakness 120 2 false
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=6400}] [{"text":"[Virus]","color":"aqua"},{"text":" You should stay grounded for the time being.","color":"white"}]
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=6540}] jump_boost 15 9 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=6700}] wither 4 1 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=6900}] poison 5 0 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=7000}] nausea 13 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=7140}] poison 3 1 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=7400}] poison 2 3 true
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=7800}] slowness 90 0 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=8100}] nausea 6 1 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=8400}] weakness 60 2 false
execute if score virusenabled global matches 1 run effect give @a[scores={infected=2,virustime=8600}] poison 3 2 true
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=9600}] [{"text":"[Virus]","color":"aqua"},{"text":" Your symptoms are gone, but the virus is not.","color":"white"}]
execute if score virusenabled global matches 1 run tellraw @a[scores={infected=2,virustime=11000}] [{"text":"[Virus]","color":"aqua"},{"text":" You are now immune to the Faceoff Virus.","color":"white"}]
execute if score virusenabled global matches 1 as @a[scores={infected=1,virustime=1000..13300}] at @a[scores={infected=1,virustime=1000..13300}] run scoreboard players set @r[distance=..1,scores={infected=0},gamemode=survival] infected 2
execute if score virusenabled global matches 1 as @a[scores={infected=1,virustime=1000..13300}] at @a[scores={infected=1,virustime=1000..13300}] run scoreboard players set @r[distance=1..6,scores={infected=0},gamemode=survival] infected 1
execute if score virusenabled global matches 1 as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=..4,scores={infected=0},gamemode=survival] infected 2
execute if score virusenabled global matches 1 as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=4..7,scores={infected=0},gamemode=survival] infected 1
execute if score virusenabled global matches 1 as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=..2,scores={infected=1,virustime=10..900},gamemode=survival] infected 2
#
#
# WAIT
#
#
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