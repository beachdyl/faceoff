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
#
# LOBBY
#
#
function faceoff:lobby
#
#
# MENU
#
#
function faceoff:adminmenu
#
#
# PLAYERMENU
#
#
function faceoff:playermenu
#
#
# SHRINK
#
#
execute if entity @r[scores={wbshrink=1,tournament=0}] run worldborder set 400 1400
execute if entity @r[scores={wbshrink=1,twist=13,tournament=0}] run effect give @a invisibility 2120 1
execute if entity @r[scores={wbshrink=1,tournament=1}] run worldborder set 640 1225
execute if entity @r[scores={wbshrink=1,twist=13,tournament=1}] run effect give @a invisibility 1855 1
execute if entity @r[scores={wbshrink=1}] run scoreboard players set gamego global 1
execute if entity @r[scores={wbshrink=1}] run title @a title {"text":"Stage 1","color":"green"}
execute if entity @r[scores={wbshrink=1,tournament=0}] run title @a subtitle {"text":"Slow Worldborder","color":"green"}
execute if entity @r[scores={wbshrink=1,tournament=1}] run title @a subtitle {"text":"Fast Worldborder","color":"green"}
execute if entity @r[scores={wbshrink=1}] run tellraw @a [{"text":"Tip: You can run \"/trigger menu\" or ","italic":true,"color":"gray"},{"text":"[click here]","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger menu"}},{"text":" to toggle the visibility of the boss bars at any time during the game.","italic":true,"color":"gray"}]
execute if entity @r[scores={wbshrink=1}] at @a[gamemode=survival] as @a[gamemode=survival] run setblock ~ ~45 ~ chest{LootTable: "faceoff:sky_crate"} replace
execute if entity @r[scores={wbshrink=1}] run scoreboard players set wbstage global 1
execute if entity @r[scores={wbshrink=1}] run scoreboard players set wbshrink global 2
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run worldborder set 400.5
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run worldborder set 150 720
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run title @a title {"text":"Stage 2","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run scoreboard players set wbstage global 2
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run worldborder set 150.5
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run worldborder set 21 280
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run title @a title {"text":"Stage 3","color":"red"}
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run scoreboard players set wbstage global 3
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run worldborder set 21.5
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run worldborder set 5 700
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run title @a title {"text":"Stage 4","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run title @a subtitle {"text":"Slowest Worldborder","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run scoreboard players set wbstage global 4
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run worldborder set 640.5
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run worldborder set 240 630
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run title @a title {"text":"Stage 2","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run scoreboard players set wbstage global 2
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run worldborder set 240.5
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run worldborder set 19 245
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run title @a title {"text":"Stage 3","color":"red"}
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run scoreboard players set wbstage global 3
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run worldborder set 19.5
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run worldborder set 3 500
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run title @a title {"text":"Stage 4","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run title @a subtitle {"text":"Slow Worldborder","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run scoreboard players set wbstage global 4
#
#
# START
#
#
execute if entity @r[scores={starttimer=1..}] run team join a @a[gamemode=survival]
execute if entity @r[scores={starttimer=1..}] run team join h @a[gamemode=!survival]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join r @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join g @r[team=a]
execute if entity @r[scores={starttimer=1..}] run team join b @r[team=a]
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a[gamemode=survival] deathtime 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a[gamemode=survival] killtime 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a gameclock 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set wbshrink global 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a mobkills 0
execute if entity @r[scores={starttimer=1..,tournament=0}] run scoreboard players set @a bars 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @a bars 3
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a infected 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a hauntprompt 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a[scores={advantage=1}] adv 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a[gamemode=survival] advantage 0
execute if entity @r[scores={starttimer=1..,tournament=1,adv=1}] run tellraw @a {"text":"Warning: The game is in tournament mode and a player has been assigned a game advantage. This can be considered unfair.","color":"gold"}
execute if entity @r[scores={starttimer=1..}] run scoreboard objectives setdisplay sidebar.team.dark_purple hauntpoints
execute if entity @r[scores={starttimer=1..}] run gamerule doDaylightCycle true
execute if entity @r[scores={starttimer=1..}] run gamerule drowningDamage true
execute if entity @r[scores={starttimer=1..,tournament=0}] run scoreboard players set @a damagealert 2
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @a damagealert 1
execute if entity @r[scores={starttimer=1..}] run effect clear @a
execute if entity @r[scores={starttimer=1..}] run time set 50t
execute if entity @r[scores={starttimer=1..}] run gamerule doMobSpawning true
execute if entity @r[scores={starttimer=1..}] run gamerule doMobLoot true
execute if entity @r[scores={starttimer=1..}] run gamerule doTileDrops true
execute if entity @r[scores={starttimer=1..}] run effect give @a saturation 5 9 true
execute if entity @r[scores={starttimer=1..}] run effect give @a resistance 30 4 true
execute if entity @r[scores={starttimer=1..}] run effect give @a invisibility 60 1 true
execute if entity @r[scores={starttimer=1..}] run effect give @a regeneration 180 2 true
execute if entity @r[scores={starttimer=1..,tournament=1}] run effect give @a speed 20 1 true
execute if entity @r[scores={starttimer=1..}] run scoreboard players set ended global 0
execute if entity @r[scores={starttimer=1..}] run title @a times 20 150 20
execute if entity @r[scores={starttimer=1..,tournament=0}] run worldborder set 750 200
execute if entity @r[scores={starttimer=1..,tournament=1}] run worldborder set 1200 200
execute if entity @r[scores={starttimer=1..}] run clear @a
execute if entity @r[scores={starttimer=1..}] run weather clear
execute if entity @r[scores={starttimer=1..}] run bossbar set 1 players @a
execute if entity @r[scores={starttimer=1..}] run advancement grant @a only minecraft:adventure/root
execute if entity @r[scores={starttimer=1..}] run tellraw @a [{"text":"Tip: You can run \"/trigger menu\" or ","italic":true,"color":"gray"},{"text":"[click here]","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger menu"}},{"text":" to show the Player Menu at any time during the game.","italic":true,"color":"gray"}]
execute if entity @r[scores={starttimer=1..}] run bossbar set 3 players
execute if entity @r[scores={starttimer=1..}] run scoreboard players set Total exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a[gamemode=survival] exist 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players operation Start exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={starttimer=1..,tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={starttimer=1..}] store result bossbar 4 max run scoreboard players get Start exist
execute if entity @r[scores={starttimer=1..}] run bossbar set 4 players
execute if entity @r[scores={starttimer=1..}] run bossbar set 4 name "Players Remaining"
#
#
# TWISTS
#
#
scoreboard players operation Twist twistchoose = @r[gamemode=survival] walk
scoreboard players operation Twist twistchoose %= Thirteen mathobj
scoreboard players operation Twist twistchoose += One mathobj
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players operation twist global = Twist twistchoose
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players operation @a twist = Twist twistchoose
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players set twistchoose global 0
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace bamboo
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace beetroots
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace cactus
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace carrots
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace cocoa
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace grass
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace fern
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace tall_grass
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace large_fern
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace dandelion
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace poppy
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace blue_orchid
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace allium
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace azure_bluet
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace red_tulip
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace orange_tulip
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace white_tulip
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace pink_tulip
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace oxeye_daisy
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace cornflower
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace lily_of_the_valley
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace sunflower
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace lilac
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace rose_bush
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace peony
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace oak_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace spruce_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace birch_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace jungle_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace acacia_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace dark_oak_leaves
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace lily_pad
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace melon
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace melon_stem
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace attached_melon_stem
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace nether_wart
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace potatoes
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace pumpkin
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace carved_pumpkin
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace pumpkin_stem
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace attached_pumpkin_stem
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace seagrass
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace tall_seagrass
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace sugar_cane
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace sweet_berry_bush
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace vine
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace wheat
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace kelp
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace kelp_plant
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace dead_bush
execute if entity @r[scores={starttimer=1..,twist=1}] run title @a title {"text":"Goodbye, Foliage!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=1}] run title @a subtitle {"text":"It's Looking Very Dead Around Here...","color":"aqua"}
execute if entity @r[scores={twist=2,gamestarted=1..}] at @r[scores={twist=2,gamestarted=1..},gamemode=survival] run fill ~-10 ~-7 ~-10 ~10 ~10 ~10 stone replace coal_ore
execute if entity @r[scores={twist=2,gamestarted=1..}] at @r[scores={twist=2,gamestarted=1..},gamemode=survival] run fill ~-10 ~-1 ~-10 ~10 ~10 ~10 stone replace coal_ore
execute if entity @r[scores={starttimer=1..,twist=2}] run title @a title {"text":"Santa Loves You!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=2}] run title @a subtitle {"text":"There Doesn't Seem to be Any Coal...","color":"aqua"}
execute if entity @r[scores={twist=3,gamestarted=1..}] at @r[scores={twist=3,gamestarted=1..},gamemode=survival] run fill ~ ~119 ~ ~ ~120 ~ glass replace air
execute if entity @r[scores={starttimer=1..,twist=3}] run title @a title {"text":"Aerial Footprint!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=3}] run title @a subtitle {"text":"You Leave a Trail in the Sky...","color":"aqua"}
execute if entity @r[scores={twist=4,gamestarted=1..}] at @r[scores={twist=4,gamestarted=1..},gamemode=survival] run clear @a[gamemode=survival] bucket
execute if entity @r[scores={starttimer=1..,twist=4}] run title @a title {"text":"Container Catastrophe!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=4}] run title @a subtitle {"text":"My Buckets Keep Disappearing...","color":"aqua"}
execute if entity @r[scores={twist=5,gamestarted=1..}] at @r[scores={twist=5,gamestarted=1..},gamemode=survival] run effect give @r[gamemode=survival,distance=1..8] glowing 3 0 true
execute if entity @r[scores={starttimer=1..,twist=5}] run title @a title {"text":"Radioactive Players!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=5}] run title @a subtitle {"text":"Everyone Around Me is Glowing...","color":"aqua"}
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify a nametagVisibility hideForOwnTeam
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify r nametagVisibility never
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify g nametagVisibility never
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify b nametagVisibility never
execute if entity @r[scores={starttimer=1..,twist=6}] run title @a title {"text":"Incognito Mode!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=6}] run title @a subtitle {"text":"Your Nametag is Transparent...","color":"aqua"}
execute if entity @r[scores={twist=7,gamestarted=1..}] at @r[scores={twist=7,gamestarted=1..},gamemode=survival] run clear @a[gamemode=survival] shield
execute if entity @r[scores={starttimer=1..,twist=7}] run title @a title {"text":"I Feel Exposed!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=7}] run title @a subtitle {"text":"Shields Are a Figment of Your Imagination...","color":"aqua"}
execute if entity @r[scores={twist=8,gamestarted=1..}] at @r[scores={twist=8,gamestarted=1..},gamemode=survival] run effect give @a[gamemode=survival] bad_omen 99999 1 true
execute if entity @r[scores={starttimer=1..,twist=8}] run title @a title {"text":"Testificate Danger!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=8}] run title @a subtitle {"text":"I'd Avoid Villages If I Were You...","color":"aqua"}
execute if entity @r[scores={twist=9,gamestarted=1..}] at @r[scores={twist=9,gamestarted=1..},gamemode=survival] as @r[scores={twist=9,gamestarted=1..},gamemode=survival] run effect give @r[gamemode=survival,distance=1..5] nausea 2 0 true
execute if entity @r[scores={starttimer=1..,twist=9}] run title @a title {"text":"Unpleasant Interactions!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=9}] run title @a subtitle {"text":"Being Near Others Makes You Feel Queasy...","color":"aqua"}
execute if entity @r[scores={twist=10,starttimer=1..}] at @r[scores={twist=10,starttimer=1..},gamemode=survival] run scoreboard players set fireworksallowed global 1
execute if entity @r[scores={starttimer=1..,twist=10}] run title @a title {"text":"Explosive Strategies!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=10}] run title @a subtitle {"text":"Fireworks Stars are Craftable...","color":"aqua"}
execute if entity @r[scores={twist=11,gamestarted=1..}] at @r[scores={twist=11,gamestarted=1..},gamemode=survival] run effect give @e[distance=..10,type=#faceoff:passive] resistance 8 4 false

execute if entity @r[scores={starttimer=1..,twist=11}] run title @a title {"text":"Extreme Veganism!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=11}] run title @a subtitle {"text":"You Can't Even Kill Them...","color":"aqua"}
execute if entity @r[scores={twist=12,starttimer=1..}] at @r[scores={twist=12,starttimer=1..},gamemode=survival] run scoreboard players set virusenabled global 1
execute if entity @r[scores={starttimer=1..,twist=12}] run title @a title {"text":"Faceoff Virus!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=12}] run title @a subtitle {"text":"Practice Social Distancing...","color":"aqua"}
execute if entity @r[scores={starttimer=1..,twist=13}] run title @a title {"text":"Ghostly Gaming!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=13}] run title @a subtitle {"text":"You'll be Hard to See For a Bit...","color":"aqua"}
#
#
# START (continued)
#
#
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a kills 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set @a mobkills 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set wspawned global 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set wbstage global 0
execute if entity @r[scores={starttimer=1..}] run scoreboard players set starttimer global 0
#
#
# VIRUS
#
#
scoreboard players set @a[scores={infected=0}] virustime 0
scoreboard players set @a[gamemode=spectator] infected -1
execute if entity @r[scores={virusenabled=1,virusassigned=0,gamestarted=1}] run scoreboard players set @r[gamemode=survival,scores={infected=0}] infected 1
execute if entity @r[scores={virusenabled=1,virusassigned=0,gamestarted=1}] run scoreboard players set virusassigned global 1
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=1,virustime=1700}] [{"text":"[Virus]","color":"aqua"},{"text":" You don't feel well. You might have caught something.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=3000}] weakness 120 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=3000}] slowness 180 0 false
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=1,virustime=3250}] [{"text":"[Virus]","color":"aqua"},{"text":" You have caught the Mild strain of the Faceoff Virus.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=5400}] weakness 120 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=6000}] nausea 10 0 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=6600}] slowness 180 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=6800}] nausea 15 0 true
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=1,virustime=7400}] [{"text":"[Virus]","color":"aqua"},{"text":" Be careful who you come into contact with.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=7800}] weakness 90 2 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=8000}] nausea 10 1 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=9600}] weakness 45 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=10200}] slowness 90 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=10500}] weakness 75 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=1,virustime=11500}] nausea 7 0 true
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=1,virustime=12000}] [{"text":"[Virus]","color":"aqua"},{"text":" Your symptoms are gone, but the virus is not.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=1,virustime=14400}] [{"text":"[Virus]","color":"aqua"},{"text":" You are now immune to the Faceoff Virus.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=1500}] [{"text":"[Virus]","color":"aqua"},{"text":" You don't feel well. You might have caught something.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=2400}] weakness 60 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=2400}] slowness 90 1 false
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=3000}] [{"text":"[Virus]","color":"aqua"},{"text":" You have caught the Severe strain of the Faceoff Virus.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=3100}] poison 7 0 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=3500}] nausea 4 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=3600}] weakness 120 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=3800}] hunger 40 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=4200}] slowness 180 2 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=4360}] poison 6 1 true
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=4500}] [{"text":"[Virus]","color":"aqua"},{"text":" Be very careful who you come close to.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=4700}] blindness 4 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=4800}] poison 7 0 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=4900}] jump_boost 25 126 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=5140}] poison 5 1 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=5180}] blindness 4 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=5400}] blindness 5 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=5600}] poison 4 2 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=5800}] blindness 6 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=6000}] weakness 120 2 false
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=6400}] [{"text":"[Virus]","color":"aqua"},{"text":" You should stay grounded for the time being.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=6540}] jump_boost 15 9 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=6700}] wither 4 1 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=6900}] poison 5 0 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=7000}] nausea 13 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=7140}] poison 3 1 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=7400}] poison 2 3 true
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=7800}] slowness 90 0 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=8100}] nausea 6 1 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=8400}] weakness 60 2 false
execute if entity @r[scores={virusenabled=1}] run effect give @a[scores={infected=2,virustime=8600}] poison 3 2 true
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=9600}] [{"text":"[Virus]","color":"aqua"},{"text":" Your symptoms are gone, but the virus is not.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] run tellraw @a[scores={infected=2,virustime=11000}] [{"text":"[Virus]","color":"aqua"},{"text":" You are now immune to the Faceoff Virus.","color":"white"}]
execute if entity @r[scores={virusenabled=1}] as @a[scores={infected=1,virustime=1000..13300}] at @a[scores={infected=1,virustime=1000..13300}] run scoreboard players set @r[distance=..1,scores={infected=0},gamemode=survival] infected 2
execute if entity @r[scores={virusenabled=1}] as @a[scores={infected=1,virustime=1000..13300}] at @a[scores={infected=1,virustime=1000..13300}] run scoreboard players set @r[distance=1..6,scores={infected=0},gamemode=survival] infected 1
execute if entity @r[scores={virusenabled=1}] as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=..4,scores={infected=0},gamemode=survival] infected 2
execute if entity @r[scores={virusenabled=1}] as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=4..7,scores={infected=0},gamemode=survival] infected 1
execute if entity @r[scores={virusenabled=1}] as @a[scores={infected=2,virustime=1300..10200}] at @a[scores={infected=1,virustime=1300..10200}] run scoreboard players set @r[distance=..2,scores={infected=1,virustime=10..900},gamemode=survival] infected 2
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