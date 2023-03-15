# increment armor stand scores
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score tournament global matches 0 run scoreboard players add @e[type=armor_stand,scores={total=..8400}] total 1
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score tournament global matches 0 run scoreboard players add @e[type=armor_stand,scores={total=..8400}] level 1
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score tournament global matches 1 run scoreboard players add @e[type=armor_stand,scores={total=..6300}] total 1
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score tournament global matches 1 run scoreboard players add @e[type=armor_stand,scores={total=..6300}] level 1

# move armor stand up
execute if score tournament global matches 0 as @e[type=armor_stand,scores={level=120..}] at @e[type=armor_stand,scores={level=120..}] run tp ~ ~1 ~
execute if score tournament global matches 0 as @e[type=armor_stand,scores={level=120..}] at @e[type=armor_stand,scores={level=120..}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 0.5
execute if score tournament global matches 0 as @e[type=armor_stand,scores={level=120..,total=..8400}] at @e[type=armor_stand,scores={level=120..,total=..8400}] run fill ~15 ~-1 ~15 ~-15 ~-1 ~-15 lava
execute if score tournament global matches 0 run scoreboard players set @e[type=armor_stand,scores={level=120..}] level 0
execute if score tournament global matches 1 as @e[type=armor_stand,scores={level=90..}] at @e[type=armor_stand,scores={level=90..}] run tp ~ ~1 ~
execute if score tournament global matches 1 as @e[type=armor_stand,scores={level=90..}] at @e[type=armor_stand,scores={level=90..}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 0.5
execute if score tournament global matches 1 as @e[type=armor_stand,scores={level=90..,total=..6300}] at @e[type=armor_stand,scores={level=90..,total=..6300}] run fill ~15 ~-1 ~15 ~-15 ~-1 ~-15 lava
execute if score tournament global matches 1 run scoreboard players set @e[type=armor_stand,scores={level=90..}] level 0

# lava bossbar
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score ended global matches 0 run bossbar set 2 players @a
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 1 if score ended global matches 1 run bossbar set 2 players

# summon wither if appropriate
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 2 if score wspawned global matches 0 at @r[gamemode=survival] run summon wither ~ 90 ~
execute if score wbsize global matches ..35 if score gamestarted global matches 1 if score enddo global matches 2 if score wspawned global matches 0 run scoreboard players set wspawned global 1

# altitude sickness
title @r[scores={wbsize=51..60,gamestarted=1..},x=-3000,y=87,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] actionbar {"text":"WARNING: If you remain here, you will begin to experience Altitude Sickness!","color":"red"}
title @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=82,z=-3000,dx=6000,dy=5,dz=6000,gamemode=survival] actionbar {"text":"CAUTION: If you continue climbing, you may begin to experience Altitude Sickness!","color":"gold"}
title @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=88,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] actionbar {"text":"WARNING: You are experiencing Altitude Sickness! Descend now!","color":"red"}

effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=88,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] mining_fatigue 3 0 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=98,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] mining_fatigue 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=98,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] slowness 3 0 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=108,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] mining_fatigue 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=108,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] slowness 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=108,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] nausea 6 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=108,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] hunger 3 0 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=118,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] mining_fatigue 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=118,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] slowness 3 2 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=118,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] nausea 6 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=118,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] hunger 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=118,z=-3000,dx=6000,dy=9,dz=6000,gamemode=survival] poison 3 0 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] mining_fatigue 3 2 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] slowness 3 3 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] nausea 6 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] hunger 3 2 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] poison 3 1 true
effect give @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=128,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] blindness 3 0 true

# give effects at the end of the game
execute if score wbsize global matches 6 if score gamego global matches 1 if score ended global matches 0 run scoreboard players set endewaittimer global 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players add @a endewaittime 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players add @a endewaittimen 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players set Bar endewaittime 200
execute if entity @r[scores={endewaittimer=1..}] run bossbar set 6 players @a
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players operation Bar endewaittime -= @r endewaittime
execute if entity @r[scores={endewaittimer=1..}] store result bossbar 6 value run scoreboard players get Bar waittime
execute if entity @r[scores={endewaittimen=22..,endewaittimer=1..}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 100 1
execute if entity @r[scores={endewaittimen=22..,endewaittimer=1..}] run scoreboard players set @a endewaittimen 0
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run bossbar set 6 players
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run effect give @a[gamemode=survival] hunger 99999 1 false
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run scoreboard players set endewaittimer global 0

# no more mobs in endgame
execute if score wbsize global matches 35..40 if score gamestarted global matches 1 run gamerule doMobSpawning false