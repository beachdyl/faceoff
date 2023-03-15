execute if entity @r[scores={lobbytimer=1..}] run team join a @a[gamemode=survival,team=]
execute if entity @r[scores={lobbytimer=1..}] run effect give @a[team=a] resistance 10 4 false
execute if entity @r[scores={lobbytimer=1..}] run effect give @a[team=a] mining_fatigue 10 9 false
execute if entity @r[scores={lobbytimer=1..}] run effect give @a[team=a] jump_boost 10 3 false
execute if entity @r[scores={lobbytimer=1..}] run effect give @a[team=a,scores={hunger=..2}] saturation 1 0 true
execute if entity @r[scores={lobbytimer=1..}] run advancement revoke @a everything
execute if entity @r[scores={lobbytimer=1..}] run bossbar set 3 players @a
execute if entity @r[scores={lobbytimer=1..}] run bossbar set 4 players @a
execute if entity @r[scores={lobbytimer=1..,tournament=0}] run bossbar set 4 max 15
execute if entity @r[scores={lobbytimer=1..,tournament=1}] run bossbar set 4 max 100
execute if entity @r[scores={lobbytimer=1..}] run weather clear
execute if entity @r[scores={lobbytimer=1..,lobbyblindness=2..}] run scoreboard players set lobbyblindness global 0
execute if entity @r[scores={lobbytimer=1..,lobbyblindness=2..}] run effect clear @a[team=a,gamemode=survival,scores={lobbyblindness=1}] blindness
execute if entity @r[scores={lobbytimer=1..}] run effect give @a[team=a,gamemode=survival,scores={lobbyblindness=1}] blindness 3 0 true
execute if entity @r[scores={lobbytimer=1..}] run scoreboard players add @a lobbytimen 1
execute if entity @r[scores={lobbytimen=1000..,lobbytimer=1..}] run title @a actionbar {"text":"Run \"/trigger help\" for Help Info","color":"gray","italic":true}
execute if entity @r[scores={lobbytimen=1000..,lobbytimer=1..}] run scoreboard players set @a lobbytimen 0