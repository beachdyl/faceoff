# moderate static scores
scoreboard players set @r[gamemode=survival] haunttime 0
scoreboard players set @r[scores={mobkills=..0}] haunttime 0
scoreboard players set @r[scores={haunttime=7001..}] haunttime 7000
execute if score ended global matches 1 run scoreboard players set @a haunttime -600

# math the haunt time scores into points
scoreboard players set @a hauntmath 0
scoreboard players set @r hauntmath 1
scoreboard players operation Haunt mathobj = @r[scores={hauntmath=1}] haunttime
scoreboard players operation Haunt mathobj /= OneThousandOneHundredSixtySix mathobj
scoreboard players operation @r[scores={hauntmath=1}] hauntpoints = Haunt mathobj

# pick a victim
scoreboard players set @a hauntee 0
scoreboard players set @r[gamemode=survival,team=!d,scores={health=6..}] hauntee 1

# haunt errors
tellraw @r[scores={haunttime=..-100,haunt=2..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You cannot haunt once the game has ended."}]
tellraw @r[scores={haunttime=0..1165,haunt=2..,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You cannot haunt yet. Wait for your points to increase!"}]
tellraw @r[scores={haunttime=0..,haunt=2..,mobkills=..0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You cannot haunt because you did not kill at least one mob during your time alive."}]
tellraw @r[scores={haunttime=0..,haunt=2..,playersleft=..2}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You cannot haunt when there are only two players left alive."}]
tellraw @r[scores={haunttime=0..,haunt=9..,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You manually specified a haunt number, but it does not exist. Click this message for help.","clickEvent":{"action":"run_command","value":"/trigger haunt set -1"}}]

# haunt menu
scoreboard players set @r[scores={haunt=1}] haunt -1
tellraw @r[scores={haunt=..-1}] {"text":"Available Haunts:","color":"light_purple"}
tellraw @r[scores={haunt=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={haunt=..-1}] [{"text":"[1] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 8"}},{"text":" Spawn skeletons 20 blocks away from a random healthy player. (2 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[2] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 2"}},{"text":" Wind the clock to midnight. (3 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[3] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 3"}},{"text":" Infect a random healthy player with a short, powerful poison. (3 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[4] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 4"}},{"text":" Give mining fatigue to a random healthy player. (1 Haunt Point)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[5] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 5"}},{"text":" Start a short thunderstorm. (6 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[6] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 6"}},{"text":" Fake a random healthy player's explosive demise. (4 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] [{"text":"[7] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger haunt set 7"}},{"text":" Cause a random healthy play to glow briefly. (5 Haunt Points)","color":"yellow"}]
tellraw @r[scores={haunt=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={haunt=..-1,mobkills=1..,playersleft=3..}] {"text":"To haunt, click on a gold haunt number in the list above.","color":"light_purple"}
tellraw @r[scores={haunt=..-1,mobkills=..0,playersleft=3..}] {"text":"You cannot haunt because you did not kill at least one mob during your time alive.","color":"light_purple","bold":true}
tellraw @r[scores={haunt=..-1,playersleft=..2}] {"text":"You cannot haunt when there are only two players left alive.","color":"light_purple","bold":true}
tellraw @r[scores={haunt=..-1}] {"text":" ","color":"gold"}

# haunts
# 1
tellraw @r[scores={haunttime=0..2331,haunt=8,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=2332..,haunt=7,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~22 ~ ~
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~-22 ~ ~
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~ ~ ~22
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~ ~ ~-22
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] haunttime 2332
# 2
tellraw @r[scores={haunttime=0..3497,haunt=2,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run tellraw @a [{"text":"The world has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run time set 18000t
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] haunttime 3498
# 3
tellraw @r[scores={haunttime=0..3497,haunt=3,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] poison 2 4 true
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] haunttime 3498
# 4
tellraw @r[scores={haunttime=0..1165,haunt=4,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] mining_fatigue 25 1 false
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] haunttime 1166
# 5
tellraw @r[scores={haunttime=0..6995,haunt=5,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run tellraw @a [{"text":"The world has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run weather thunder 150
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] haunttime 6996
# 6
tellraw @r[scores={haunttime=0..4663,haunt=6,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" was blown up by ","color":"white"},{"selector":"@e[limit=1,type=creeper]","color":"white"}]
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] as @r[scores={hauntee=1}] run playsound entity.generic.explode hostile @a
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] as @r[scores={hauntee=1}] run playsound entity.player.death player @a
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @a boomtimer 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] boomhaunter 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @r[scores={hauntee=1}] boomhauntee 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] haunttime 4664
# 6 (boom effect code)
execute if entity @r[scores={boomtimer=1..}] run scoreboard players add @a boomtime 1
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run tellraw @a [{"selector":"@r[scores={boomhauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={boomhaunter=1}]"}]
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomhauntee 0
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomhaunter 0
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomtimer 0
execute if entity @r[scores={boomtimer=0,boomtime=1..}] run scoreboard players set @a boomtime 0
# 7
tellraw @r[scores={haunttime=0..5829,haunt=7,mobkills=1..,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}]
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] glowing 9 0 false
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] haunttime 6996

# end haunting logic
scoreboard players set @a haunt 0

# haunt reminder message
execute if entity @r[scores={gamestarted=1..}] unless score ended global matches 1 run scoreboard players add @a hauntwarntimen 1
execute if entity @r[scores={hauntwarntimen=3000..3025,gamestarted=1..}] unless score ended global matches 1 run title @a[gamemode=survival,scores={ended=0,mobkills=..0}] actionbar {"text":"You must kill a mob to be able to haunt when you die!","color":"yellow"}
execute if entity @r[scores={hauntwarntimen=6000,gamestarted=1..}] unless score ended global matches 1 run tellraw @a[gamemode=survival,scores={ended=0,mobkills=..0,playersleft=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Reminder!","color":"gold"},{"text":" You must kill a mob during your time alive, or you will not be able to haunt when you die! I will keep reminding you until you kill any mob.","color":"yellow"}]
execute if entity @r[scores={hauntwarntimen=6000..6025,gamestarted=1..}] unless score ended global matches 1 run title @a[gamemode=survival,scores={ended=0,mobkills=..0}] actionbar {"text":"You must kill a mob to be able to haunt when you die!","color":"yellow"}
execute if entity @r[scores={hauntwarntimen=6025..,gamestarted=1..}] unless score ended global matches 1 run scoreboard players set @a hauntwarntimen 0