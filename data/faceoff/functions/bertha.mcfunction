#
#
# CLOCK
#
#
scoreboard players set @r[team=] team 0
scoreboard players set @r[team=r] team 1
scoreboard players set @r[team=g] team 2
scoreboard players set @r[team=b] team 3
scoreboard players set @r[team=a] team 4
team join h @r[gamemode=spectator,team=!h,scores={mobkills=..0}]
clear @a[scores={fireworksallowed=0}] firework_star
tellraw @a[scores={health=0,hauntprompt=0},gamemode=survival] [{"text":"Tip: You can run \"/trigger menu\" or ","italic":true,"color":"gray"},{"text":"[click here]","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger menu"}},{"text":" to access the haunt menu as a dead player.","italic":true,"color":"gray"}]
scoreboard players set @a[scores={health=0,hauntprompt=0,damagealert=1..},gamemode=survival] damagealert 3
scoreboard players set @a[scores={health=0,hauntprompt=0},gamemode=survival] hauntprompt 1
team join s @r[gamemode=spectator,team=!s,scores={mobkills=1..}]
execute if entity @r[scores={gamestarted=1},gamemode=survival] run gamemode spectator @r[team=,gamemode=survival]
team join h @r[gamemode=spectator,team=]
scoreboard players add @a[scores={health=1..,kills=..0,killtime=1..}] killtime 1
scoreboard players add @a[scores={health=1..,deathtime=1..}] deathtime 1
team join d @r[scores={health=..5},team=a]
team join a @r[scores={health=6..},team=d]
team join s @r[scores={health=0,mobkills=1..},team=!s,gamemode=survival]
team join h @r[scores={health=0,mobkills=..0},team=!h,gamemode=survival]
execute store result bossbar 1 value run worldborder get
execute store result bossbar 2 value run scoreboard players get @e[type=armor_stand,limit=1] total
execute store result score wbsize global run worldborder get
execute if entity @r[scores={wbsize=100..,gamestarted=..0}] run scoreboard players set gamestarted global 1
execute if entity @r[scores={tournament=0,wbshrink=..0,wbsize=750..}] run scoreboard players set wbshrink global 1
execute if entity @r[scores={tournament=1,wbshrink=..0,wbsize=1200..}] run scoreboard players set wbshrink global 1
execute if entity @r[scores={gamego=1..}] run bossbar set 1 players @a[scores={bars=1..2,gamego=1..}]
execute if entity @r[scores={gamego=1..}] run bossbar set 4 players @a[scores={bars=2..3,gamego=1..,ended=0}]
scoreboard players enable @r bars
scoreboard players enable @r help
scoreboard players enable @r menu
execute if entity @r[scores={adv=1}] run scoreboard players set @a advantage 0
execute if entity @r[scores={adv=1}] run scoreboard players set @r[scores={adv=1}] advantage 1
scoreboard players set @r[scores={advantage=1,health=0}] advantage 0
execute if entity @r[scores={adv=1,tournament=1}] run tellraw @a {"text":"Warning: The game is in tournament mode and a player has been assigned a game advantage. This can be considered unfair.","color":"gold"}
execute if entity @r[scores={adv=1}] run scoreboard players set @r[scores={adv=1}] adv 0
effect give @a[scores={advantage=1,gamego=1}] speed 15 0 true
effect give @a[scores={advantage=1,gamego=1}] invisibility 15 0 false
effect give @a[scores={advantage=1,gamego=1}] jump_boost 15 0 true
item replace entity @a[scores={advantage=1,gamego=1}] armor.head with stone_button{display: {Name: '{"text":"Game Advantage"}'}, HideFlags: 63, Enchantments: [{id: "minecraft:binding_curse", lvl: 1}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "Health Limited to 50%", Slot: "head", Amount: -10, Operation: 0, UUID: [I; 0, 64901, 0, 107005]}]}
execute at @r[gamemode=survival,scores={advantage=0,gamego=1}] as @r[gamemode=survival,scores={advantage=0,gamego=1}] run effect clear @a[gamemode=survival,scores={advantage=1},distance=..12] speed
execute at @r[gamemode=survival,scores={advantage=0,gamego=1}] as @r[gamemode=survival,scores={advantage=0,gamego=1}] run effect clear @a[gamemode=survival,scores={advantage=1},distance=..16] invisibility
execute at @r[gamemode=survival,scores={advantage=0,gamego=1}] as @r[gamemode=survival,scores={advantage=0,gamego=1}] run effect clear @a[gamemode=survival,scores={advantage=1},distance=..12] jump_boost
execute if entity @r[scores={gamestarted=1}] run scoreboard players enable @r suicide
execute if entity @r[scores={ended=1}] run bossbar set 2 players
scoreboard players set @r timeselect 1
scoreboard players operation Seconds mathobj = @r[scores={timeselect=1}] deathtime
scoreboard players operation Seconds mathobj /= Twenty mathobj
scoreboard players operation @r[scores={timeselect=1}] deathtimes = Seconds mathobj
scoreboard players operation Minutes mathobj = @r[scores={timeselect=1}] deathtimes
scoreboard players operation Minutes mathobj /= Sixty mathobj
scoreboard players operation @r[scores={timeselect=1}] deathtimem = Minutes mathobj
scoreboard players operation VMinutes mathobj = @r[scores={timeselect=1}] virustime
scoreboard players operation VMinutes mathobj /= OneThousandTwoHundred mathobj
scoreboard players operation @r[scores={timeselect=1}] virustimem = VMinutes mathobj
scoreboard players set @a timeselect 0
scoreboard players set Now exist 0
scoreboard players set @a[gamemode=survival,scores={health=1..}] exist 1
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
scoreboard players set @r[scores={exist=1..}] existselect 1
scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
scoreboard players set @r[scores={existselect=1..}] exist 0
scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if entity @r[scores={tournament=1}] run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if entity @r[scores={tournament=1}] run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute store result bossbar 4 value run scoreboard players get Now exist
scoreboard players operation playersleft global = Now exist
execute if entity @r[scores={gamego=1..}] unless entity @r[scores={ended=1..}] run scoreboard players add @a advtimen 1
execute if entity @r[scores={advtimen=5..7,gamego=1..}] unless entity @r[scores={ended=1..}] run title @a[gamemode=survival,scores={ended=0,advantage=1}] actionbar {"text":"You have a game advantage! Use this power tactfully.","color":"aqua"}
execute if entity @r[scores={advtimen=4860..,gamego=1..}] unless entity @r[scores={ended=1..}] run scoreboard players set @a advtimen 0
tellraw @r[scores={bars=..-1}] {"text":"Available Boss Bars:","color":"light_purple"}
tellraw @r[scores={bars=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={bars=..-1}] [{"text":"[3] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger bars set 3"}},{"text":" Players Remaining only.","color":"yellow"}]
tellraw @r[scores={bars=..-1}] [{"text":"[2] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger bars set 2"}},{"text":" Players Remaining and World Border.","color":"yellow"}]
tellraw @r[scores={bars=..-1}] [{"text":"[1] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger bars set 1"}},{"text":" World Border only.","color":"yellow"}]
tellraw @r[scores={bars=..-1}] [{"text":"[0] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger bars set 0"}},{"text":" No boss bars. (*)","color":"yellow"}]
tellraw @r[scores={bars=..-1}] {"text":"      (*) Some boss bars are not optional and are shown to everybody in the game.","color":"gray","italic":true}
tellraw @r[scores={bars=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={bars=..-1}] {"text":"To select your boss bars, click on a gold number in the list above. If you select nothing, it will be reset to default.","color":"light_purple"}
scoreboard players set @r[scores={bars=..-1,tournament=0}] bars 0
scoreboard players set @r[scores={bars=..-1,tournament=1}] bars 3
give @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] coal 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] odcoal 1
give @a[scores={oredrops=2..,gamestarted=1..,odiron=1..},gamemode=survival] iron_ore 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odiron=1..},gamemode=survival] odiron 1
give @a[scores={oredrops=2..,gamestarted=1..,odlapis=1..},gamemode=survival] lapis_lazuli 6
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odlapis=1..},gamemode=survival] odlapis 1
give @a[scores={oredrops=2..,gamestarted=1..,odgold=1..},gamemode=survival] gold_ore 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odgold=1..},gamemode=survival] odgold 1
give @a[scores={oredrops=2..,gamestarted=1..,odredstone=1..},gamemode=survival] redstone 4
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odredstone=1..},gamemode=survival] odredstone 1
give @a[scores={oredrops=2..,gamestarted=1..,oddiamond=1..},gamemode=survival] diamond 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,oddiamond=1..},gamemode=survival] oddiamond 1
give @a[scores={oredrops=2..,gamestarted=1..,odemerald=1..},gamemode=survival] emerald 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odemerald=1..},gamemode=survival] odemerald 1
#
#
#
# DAMAGEALERT
#
#
scoreboard players enable @a damenu
scoreboard players operation @r[scores={damagetimer=5}] damage1 = @r[scores={damagetimer=5}] health
scoreboard players operation @r[scores={damagetimer=25}] damage2 = @r[scores={damagetimer=25}] health
scoreboard players operation @r[scores={damagetimer=45}] damage3 = @r[scores={damagetimer=45}] health
scoreboard players operation @r[scores={damagetimer=65}] damage4 = @r[scores={damagetimer=65}] health
scoreboard players set @r[scores={damagetimer=66..}] damagetimer 0
scoreboard players operation @r[scores={damagetimer=5}] damagecalc1 = @r[scores={damagetimer=5}] damage3
scoreboard players operation @r[scores={damagetimer=5}] damagecalc1 -= @r[scores={damagetimer=5}] damage1
scoreboard players operation @r[scores={damagetimer=25}] damagecalc2 = @r[scores={damagetimer=25}] damage4
scoreboard players operation @r[scores={damagetimer=25}] damagecalc2 -= @r[scores={damagetimer=25}] damage2
scoreboard players operation @r[scores={damagetimer=45}] damagecalc3 = @r[scores={damagetimer=45}] damage1
scoreboard players operation @r[scores={damagetimer=45}] damagecalc3 -= @r[scores={damagetimer=45}] damage3
scoreboard players operation @r[scores={damagetimer=65}] damagecalc4 = @r[scores={damagetimer=65}] damage2
scoreboard players operation @r[scores={damagetimer=65}] damagecalc4 -= @r[scores={damagetimer=65}] damage4
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"[DamageAlert] ","color":"yellow"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"[DamageAlert] ","color":"yellow"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"[DamageAlert] ","color":"yellow"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"[DamageAlert] ","color":"yellow"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"[DamageAlert] ","color":"gold"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"[DamageAlert] ","color":"gold"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"[DamageAlert] ","color":"gold"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"[DamageAlert] ","color":"gold"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"[DamageAlert] ","color":"red"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"[DamageAlert] ","color":"red"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"[DamageAlert] ","color":"red"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"[DamageAlert] ","color":"red"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc1=1..6,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc1=1..6,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=1..6,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc2=1..6,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=1..6,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc3=1..6,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=1..6,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"[HealthAlert] ","color":"red"},{"selector":"@a[scores={damagecalc4=1..6,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc1=1..,damagetimer=5,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc2=1..,damagetimer=25,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc3=1..,damagetimer=45,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc4=1..,damagetimer=65,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc1=1..,damagetimer=5,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=25,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=45,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=65,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
scoreboard players set @r[scores={damenu=1}] damenu -1
scoreboard players set @r[scores={damenu=6..}] damenu -1
tellraw @r[scores={damenu=..-1}] {"text":"Available DamageAlert Levels:","color":"light_purple"}
tellraw @r[scores={damenu=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={damenu=..-1}] [{"text":"[3] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 5"}},{"text":" Imminent death, severe injury, and large hit alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[2] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 4"}},{"text":" Imminent death and severe injury alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[1] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 3"}},{"text":" Imminent death alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[0] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 2"}},{"text":" No alerts. (*)","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] {"text":"      (*) If the game is not in tournament mode, all players will receive an alert for somebody at risk of imminent death.","color":"gray","italic":true}
tellraw @r[scores={damenu=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={damenu=..-1}] [{"text":"To select a DamageAlert level, click on a gold number in the list above. Click ","color":"light_purple"},{"text":"[here]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger damagealert set -1"}},{"text":" to restore to default.","color":"light_purple"}]
scoreboard players set @r[scores={damenu=2}] damagealert 0
scoreboard players set @r[scores={damenu=3}] damagealert 1
scoreboard players set @r[scores={damenu=4}] damagealert 2
scoreboard players set @r[scores={damenu=5}] damagealert 3
scoreboard players set @r[scores={damenu=..-1}] damenu 0
scoreboard players set @r[scores={damenu=1..}] damenu 0
scoreboard players set @r[scores={damagealert=..-1,tournament=0}] damagealert 2
scoreboard players set @r[scores={damagealert=..-1,tournament=1}] damagealert 1
execute if entity @r[scores={healthawaittimer=1..}] run scoreboard players add @a healthawaittime 1
execute if entity @r[scores={healthawaittimer=1..}] run scoreboard players add @a healthawaittimen 1
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] at @a as @a run playsound minecraft:block.note_block.harp master @a[scores={tournament=0}] ~ ~ ~ 100 0.5
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] at @a as @a run playsound minecraft:block.note_block.harp master @a[scores={tournament=1,damagealert=1..}] ~ ~ ~ 100 0.5
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] run scoreboard players set @a healthawaittimen 0
execute if entity @r[scores={healthawaittime=16..,healthawaittimer=1..}] run scoreboard players set @a healthawaittimen 0
execute if entity @r[scores={healthawaittime=16..,healthawaittimer=1..}] run scoreboard players set healthawaittimer global 0
#
#
#
# END
#
#
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run scoreboard players reset Bar waittime
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run bossbar set 3 name "Game Over"
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run bossbar set 3 value 150
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run bossbar set 3 players @a
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run bossbar set 4 players
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run teleport @a @r[gamemode=survival,scores={health=1..}]
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run title @a times 20 150 20
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run title @a title {"text":"Game Over!","color":"red"}
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run title @a subtitle [{"selector":"@r[gamemode=survival,scores={health=1..}]","color":"gold"},{"text":" wins!","color":"gold"}]
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run scoreboard players set @e[type=armor_stand] total 10000
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run scoreboard objectives setdisplay sidebar.team.dark_purple deathtimem
execute if score Now exist matches 1 if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1}] run scoreboard players set ended global 1
execute if score Now exist matches 1 if entity @r[scores={ended=1}] run gamemode spectator @a[gamemode=!spectator]
#
#
# GLOBAL
#
#
scoreboard players operation @a enddo = enddo global
scoreboard players operation @a ended = ended global
scoreboard players operation @a endewaittimer = endewaittimer global
scoreboard players operation @a fireworksallowed = fireworksallowed global
scoreboard players operation @a gamego = gamego global
scoreboard players operation @a gamestarted = gamestarted global
scoreboard players operation @a healthawaittimer = healthawaittimer global
scoreboard players operation @a lobbyblindness = lobbyblindness global
scoreboard players operation @a lobbytimer = lobbytimer global
scoreboard players operation @a oredrops = oredrops global
scoreboard players operation @a playersleft = playersleft global
scoreboard players operation @a starttimer = starttimer global
scoreboard players operation @a tournament = tournament global
scoreboard players operation @a twist = twist global
scoreboard players operation @a twistchoose = twistchoose global
scoreboard players operation @a virusassigned = virusassigned global
scoreboard players operation @a virusenabled = virusenabled global
scoreboard players operation @a waittimer = waittimer global
scoreboard players operation @a wbsize = wbsize global
scoreboard players operation @a wbshrink = wbshrink global
scoreboard players operation @a wbstage = wbstage global
scoreboard players operation @a wspawned = wspawned global
#
#
# HAUNT
#
#
scoreboard players set @r[gamemode=survival] haunttime 0
scoreboard players set @r[scores={mobkills=..0}] haunttime 0
scoreboard players set @a hauntmath 0
scoreboard players set @r hauntmath 1
scoreboard players operation Haunt mathobj = @r[scores={hauntmath=1}] haunttime
scoreboard players operation Haunt mathobj /= OneThousandOneHundredSixtySix mathobj
scoreboard players operation @r[scores={hauntmath=1}] hauntpoints = Haunt mathobj
scoreboard players enable @a[team=s] haunt
scoreboard players enable @a[team=h] haunt
scoreboard players set @r[scores={haunttime=7001..}] haunttime 7000
scoreboard players set @a hauntee 0
scoreboard players set @r[gamemode=survival,team=!d,scores={health=6..}] hauntee 1
execute if entity @r[scores={ended=1..}] run scoreboard players set @a haunttime -600
tellraw @r[scores={haunttime=..-100,haunt=2..}] {"text":"You cannot haunt once the game has ended.","color":"red"}
tellraw @r[scores={haunttime=0..1165,haunt=2..,mobkills=1..,playersleft=3..}] {"text":"You cannot haunt yet. Wait for your points to increase!","color":"red"}
tellraw @r[scores={haunttime=0..,haunt=2..,mobkills=..0}] {"text":"You cannot haunt because you did not kill at least one mob during your time alive.","color":"red"}
tellraw @r[scores={haunttime=0..,haunt=2..,playersleft=..2}] {"text":"You cannot haunt because there are only two players left alive.","color":"red"}
tellraw @r[scores={haunttime=0..,haunt=9..,mobkills=1..,playersleft=3..}] [{"text":"The haunt number specified does not exist. Click this message for help.","color":"red","clickEvent":{"action":"run_command","value":"/trigger haunt set -1"}}]
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
tellraw @r[scores={haunt=..-1,playersleft=..2}] {"text":"You cannot haunt because there are only two players left alive.","color":"light_purple","bold":true}
tellraw @r[scores={haunt=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={haunttime=0..2331,haunt=8,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"} 
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=2332..,haunt=7,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~22 ~ ~
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~-22 ~ ~
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~ ~ ~22
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] run summon skeleton ~ ~ ~-22
execute if entity @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=2332..,haunt=8,mobkills=1..,playersleft=3..}] haunttime 2332
tellraw @r[scores={haunttime=0..3497,haunt=2,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run tellraw @a [{"text":"The world has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run time set 18000t
execute if entity @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=3498..,haunt=2,mobkills=1..,playersleft=3..}] haunttime 3498
tellraw @r[scores={haunttime=0..3497,haunt=3,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] poison 2 4 true
execute if entity @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=3498..,haunt=3,mobkills=1..,playersleft=3..}] haunttime 3498
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] mining_fatigue 25 1 false
execute if entity @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=1166..,haunt=4,mobkills=1..,playersleft=3..}] haunttime 1166
tellraw @r[scores={haunttime=0..6995,haunt=5,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run tellraw @a [{"text":"The world has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run weather thunder 150
execute if entity @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=6996..,haunt=5,mobkills=1..,playersleft=3..}] haunttime 6996
tellraw @r[scores={haunttime=0..4663,haunt=6,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" was blown up by ","color":"white"},{"selector":"@e[limit=1,type=creeper]","color":"white"}]
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] as @r[scores={hauntee=1}] run playsound entity.generic.explode hostile @a
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] at @r[scores={hauntee=1}] as @r[scores={hauntee=1}] run playsound entity.player.death player @a
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @a boomtimer 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] boomhaunter 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players set @r[scores={hauntee=1}] boomhauntee 1
execute if entity @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=4664..,haunt=6,mobkills=1..,playersleft=3..}] haunttime 4664
tellraw @r[scores={haunttime=0..5829,haunt=7,mobkills=1..,playersleft=3..}] {"text":"You do not have enough Haunt Points for this haunt yet. Wait for your points to increase!","color":"red"}
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run tellraw @a [{"selector":"@r[scores={hauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}]"}]
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run effect give @r[scores={hauntee=1}] glowing 9 0 false
execute if entity @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] run scoreboard players remove @r[scores={haunttime=5830..,haunt=7,mobkills=1..,playersleft=3..}] haunttime 6996
execute if entity @r[scores={boomtimer=1..}] run scoreboard players add @a boomtime 1
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run tellraw @a [{"selector":"@r[scores={boomhauntee=1}]"},{"text":" has been haunted by ","color":"light_purple"},{"selector":"@r[scores={boomhaunter=1}]"}]
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomhauntee 0
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomhaunter 0
execute if entity @r[scores={boomtime=160..,boomtimer=1..}] run scoreboard players set @a boomtimer 0
execute if entity @r[scores={boomtimer=0,boomtime=1..}] run scoreboard players set @a boomtime 0
scoreboard players set @a haunt 0
execute if entity @r[scores={gamestarted=1..}] unless entity @r[scores={ended=1..}] run scoreboard players add @a hauntwarntimen 1
execute if entity @r[scores={hauntwarntimen=3000..3025,gamestarted=1..}] unless entity @r[scores={ended=1..}] run title @a[gamemode=survival,scores={ended=0,mobkills=..0}] actionbar {"text":"You must kill a mob to be able to haunt when you die!","color":"yellow"}
execute if entity @r[scores={hauntwarntimen=6000,gamestarted=1..}] unless entity @r[scores={ended=1..}] run tellraw @a[gamemode=survival,scores={ended=0,mobkills=..0,playersleft=3..}] {"text":"You must kill a mob during your time alive, or you will not be able to haunt when you die! This message will continue to appear periodically until you kill any mob.","color":"yellow"}
execute if entity @r[scores={hauntwarntimen=6000..6025,gamestarted=1..}] unless entity @r[scores={ended=1..}] run title @a[gamemode=survival,scores={ended=0,mobkills=..0}] actionbar {"text":"You must kill a mob to be able to haunt when you die!","color":"yellow"}
execute if entity @r[scores={hauntwarntimen=6025..,gamestarted=1..}] unless entity @r[scores={ended=1..}] run scoreboard players set @a hauntwarntimen 0
#
#
# HELPME
#
#
tellraw @r[scores={help=1..}] {"text":" ","color":"","italic":false}
tellraw @r[scores={help=1..}] {"text":"This is the help information for Faceoff!","color":"light_purple","italic":false}
tellraw @r[scores={help=1..}] {"text":" ","color":"","italic":false}
tellraw @r[scores={help=1..}] {"text":"Objective and Winning","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"The objective of Faceoff is to be the last player or team alive. Once a player dies in the game, they will not be able to respawn unless they are resurrected. Once you are the last player alive, the game will end. An alternative way to win the game is to kill the Ender Dragon.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Worldborder Stages","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"As the game progresses, the worldborder will go through four distinct stages. The worldborder is slowest at Stage 1, then faster at Stage 2, then fastest at Stage 3. Stage 4 occurs after the worldborder reaches its destination and is a very slow crawl.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"LootCrates","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"At the beginning of Stage 1, a LootCrate will spawn 45 blocks above your head containing some useful goodies. Make sure to get your LootCrate as soon as it spawns, because if you don't, somebody else might.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Rising Lava","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"If the game progresses for a while without having a winner, lava will start rising from the bottom of the world. A bar will appear at the top of the screen when this begins. The game can be set up to spawn a Wither at this time instead of using the rising lava.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Altitude Sickness","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"During Stage 3, players that are at a high altitude will begin to experience Altitude Sickness. The effects of Altitude Sickness get worse as you get higher. You will receive a warning shortly before the effects begin if you are at risk. Altitude Sickness can indirectly kill you.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Dragonballs","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"A Dragonball is a structure you can build to resurrect a player that has been killed, as long as they are still in the game and did not surrender. To make a Dragonball, you must create and light a nether portal with an interior (area of portal blocks) that is 4 blocks wide and 4 blocks tall. Once you have done that, tell the game manager who you would like to bring back and they will process the resurrection. They can learn how to do that by selecting \"Admin Help\" from the Player Menu. Once you build a Dragonball, you can no longer build another Dragonball or a Super Dragonball. Once the resurrection occurs, it will be announced in chat with an advancement.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Super Dragonballs","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"A Super Dragonball is a structure you can build to get a Totem of Undying. To make a Super Dragonball, you must create and light a nether portal with an interior (area of portal blocks) that is 5 blocks wide and 5 blocks tall. Once you have done that, tell the game manager and they will give you the totem. They can learn how to do that by selecting \"Admin Help\" from the Player Menu. Once anybody in the game builds a Super Dragonball, nobody else in the game can build a Super Dragonball. Also, the person who creates the Super Dragonabll can no longer make a Dragonball. An annoucement in chat will not be made until you use your Totem of Undying to cheat death.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"Haunting","color":"gold","italic":false}
tellraw @r[scores={help=1..}] [{"text":"Players that have died will have the opportunity to haunt the living players periodically. Each haunt costs a certain number of Haunt Points to use. With Haunt Points, spectators will have the ability to haunt the world or a random healthy player within it. You will not be able to haunt if you did not kill at least one mob during the time you were alive. Dead players that can haunt will have \"(Ghost)\" after their name, whereas dead players that cannot haunt will have \"(Spectator)\" after their name. To learn more about haunts run \"/trigger menu\", or ","color":"yellow"},{"text":"[click here]","clickEvent":{"action":"run_command","value":"/trigger haunt set -1"},"color":"yellow"},{"text":" after you have died.","color":"yellow","italic":false}]
tellraw @r[scores={help=1..}] {"text":"Game Advantage","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"The game manager can assign a game advantage to a maximum of one player at a time. This gives the player special status effects which will disable if they get too close to any other player. Players will be notified above their hotbar periodically that they have a game advantage. Nobody else will know an advantage is in play, unless the game is in tournament mode.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":" ","color":"","italic":false}
tellraw @r[scores={help=1..}] {"text":"Credits","color":"gold","italic":false}
tellraw @r[scores={help=1..}] {"text":"This game was designed, produced, and scripted by DBHerobrine. You can find me on social media at @beachdyl. Special thanks to Raphaelist for bug testing, and to Supertopia for the support.","color":"yellow","italic":false}
tellraw @r[scores={help=1..}] {"text":"","color":"","italic":false}
tellraw @r[scores={help=1..}] {"text":"This is the help information for Faceoff!","color":"light_purple"}
tellraw @r[scores={help=1..}] {"text":"(open chat to view all of the information)","color":"light_purple","italic":true}
tellraw @r[scores={help=1..}] {"text":" ","color":"","italic":false}
scoreboard players set @r[scores={help=1..}] help 0
#
#
# LAVA
#
#
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,tournament=0}] run scoreboard players add @e[type=armor_stand,scores={total=..8400}] total 1
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,tournament=0}] run scoreboard players add @e[type=armor_stand,scores={total=..8400}] level 1
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,tournament=1}] run scoreboard players add @e[type=armor_stand,scores={total=..6300}] total 1
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,tournament=1}] run scoreboard players add @e[type=armor_stand,scores={total=..6300}] level 1
execute if entity @r[scores={tournament=0}] as @e[type=armor_stand,scores={level=120..}] at @e[type=armor_stand,scores={level=120..}] run tp ~ ~1 ~
execute if entity @r[scores={tournament=0}] as @e[type=armor_stand,scores={level=120..}] at @e[type=armor_stand,scores={level=120..}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 0.5
execute if entity @r[scores={tournament=0}] as @e[type=armor_stand,scores={level=120..,total=..8400}] at @e[type=armor_stand,scores={level=120..,total=..8400}] run fill ~15 ~-1 ~15 ~-15 ~-1 ~-15 lava
execute if entity @r[scores={tournament=0}] run scoreboard players set @e[type=armor_stand,scores={level=120..}] level 0
execute if entity @r[scores={tournament=1}] as @e[type=armor_stand,scores={level=90..}] at @e[type=armor_stand,scores={level=90..}] run tp ~ ~1 ~
execute if entity @r[scores={tournament=1}] as @e[type=armor_stand,scores={level=90..}] at @e[type=armor_stand,scores={level=90..}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 0.5
execute if entity @r[scores={tournament=1}] as @e[type=armor_stand,scores={level=90..,total=..6300}] at @e[type=armor_stand,scores={level=90..,total=..6300}] run fill ~15 ~-1 ~15 ~-15 ~-1 ~-15 lava
execute if entity @r[scores={tournament=1}] run scoreboard players set @e[type=armor_stand,scores={level=90..}] level 0
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,ended=0}] run bossbar set 2 players @a
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=1,ended=1}] run bossbar set 2 players
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=2,wspawned=0}] at @r[gamemode=survival] run summon wither ~ ~100 ~
execute if entity @r[scores={wbsize=..35,gamestarted=1..,enddo=2,wspawned=0}] run scoreboard players set wspawned global 1
title @r[scores={wbsize=51..60,gamestarted=1..},x=-3000,y=87,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] actionbar {"text":"WARNING: If you remain here, you will begin to experience Altitude Sickness!","color":"red"}
title @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=82,z=-3000,dx=6000,dy=5,dz=6000,gamemode=survival] actionbar {"text":"CAUTION: If you continue climbing, you may begin to experience Altitude Sickness!","color":"gold"}
title @r[scores={wbsize=..50,gamestarted=1..},x=-3000,y=88,z=-3000,dx=6000,dy=300,dz=6000,gamemode=survival] actionbar {"text":"WARNING: You are experiencing Altitude Sickness! Descend now!","color":"red"}
execute if entity @r[scores={wbsize=35..40,gamestarted=1..}] run gamerule doMobSpawning false
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
execute if entity @r[scores={wbsize=6,gamego=1,ended=0}] run scoreboard players set endewaittimer global 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players add @a endewaittime 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players add @a endewaittimen 1
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players set Bar endewaittime 200
execute if entity @r[scores={endewaittimer=1..}] run bossbar set 6 players @a
execute if entity @r[scores={endewaittimer=1..}] run scoreboard players operation Bar endewaittime -= @r endewaittime
execute if entity @r[scores={endewaittimer=1..}] store result bossbar 6 value run scoreboard players get Bar waittime
execute if entity @r[scores={endewaittimen=22..,endewaittimer=1..}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 100 1
execute if entity @r[scores={endewaittimen=22..,endewaittimer=1..}] run scoreboard players set @a endewaittimen 0
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run bossbar set 6 players
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run effect give @a[gamemode=survival] hunger 360 1 false
execute if entity @r[scores={endewaittime=200..,endewaittimer=1..}] run scoreboard players set endewaittimer global 0
#
#
# LOBBY
#
#
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
#
#
# MENU
#
#
execute if entity @r[scores={adminmenu=1..}] at @r[scores={adminmenu=1..}] as @r[scores={adminmenu=1..}] run kill @e[type=item,distance=..4]
give @r[scores={adminmenu=1..}] command_block
tellraw @r[scores={adminmenu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={adminmenu=1..}] {"text":"This is the Admin Panel for Faceoff!","color":"light_purple"}
tellraw @r[scores={adminmenu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={adminmenu=1..}] {"text":"Here are your options:","color":"aqua"}
tellraw @r[scores={adminmenu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={adminmenu=1..}] [{"text":"Game Setup - ","color":"gold"},{"text":"[Initial Setup]","clickEvent":{"action":"run_command","value":"/function faceoff:setup"},"color":"yellow","hoverEvent":{"action":"show_text","value":"Click this button first at a spawn location of your choosing."}},{"text":" "},{"text":"[Tournament Mode]","clickEvent":{"action":"run_command","value":"/function faceoff:tournament"},"color":"yellow","hoverEvent":{"action":"show_text","value":"Enable tournament mode. This increases the player limit to 100, changes the behavior of the start of the game, makes the border larger and much faster, and more."}},{"text":" "},{"text":"[Teams]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:teams"},"hoverEvent":{"action":"show_text","value":"Configure the game engine to randomly populate three teams of players when the game starts, instead of being a free-for-all. This cannot be reversed and will disable the Game Over sequence."}},{"text":" "},{"text":"[Wither]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:wither"},"hoverEvent":{"action":"show_text","value":"Spawn a wither near the end of the game instead of having lava rise from bedrock."}},{"text":" "},{"text":"[Twist]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set twistchoose global 1"},"hoverEvent":{"action":"show_text","value":"Enable a random game twist, which will change how the game is played and may prevent certain metas. Some twists can cause significant lag. You can force the twist to stop with the Stop Twist button below."}},{"text":" "},{"text":"[More Ores]","clickEvent":{"action":"suggest_command","value":"/scoreboard players set oredrops global 1"},"color":"yellow","hoverEvent":{"action":"show_text","value":"Change the multiplier for the amount of ore dropped by ore blocks. Set the number to 2 to double ore drops, 3 to triple, and so on. Default is 1."}},{"text":" "},{"text":"[Lobby Blindness]","clickEvent":{"action":"run_command","value":"/scoreboard players add lobbyblindness global 1"},"color":"yellow","hoverEvent":{"action":"show_text","value":"Click to toggle the Blindness effect in the lobby."}}]
tellraw @r[scores={adminmenu=1..}] [{"text":"Run Game - ","color":"gold"},{"text":"[Start Game]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:go"},"hoverEvent":{"action":"show_text","value":"Starts the match. No new players may join after you click this."}},{"text":" "},{"text":"[Stop Twist]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set twist global 0"},"hoverEvent":{"action":"show_text","value":"Immediately stops the running twist. This can only be pressed after the game has started with twists enabled. Twists cannot be re-enabled after this is pressed."}},{"text":" "},{"text":"[Assign Advantage]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set PLAYER_NAME adv 1"},"hoverEvent":{"action":"show_text","value":"Give an advantage to a player. This will also remove the advantage from any other player that has it. In some circles, this is considered unfair."}}]
tellraw @r[scores={adminmenu=1..}] [{"text":"Dragonball - ","color":"gold"},{"text":"[Resurrection: Builder]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set PORTAL_BUILDER_NAME p 1"},"hoverEvent":{"action":"show_text","value":"Designate which living player has built the portal before you process a resurrection."}},{"text":" "},{"text":"[Resurrection: Resurrectee]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set DEAD_ONLINE_PLAYER_NAME db 1"},"hoverEvent":{"action":"show_text","value":"Designate which dead online player will be resurrected before you process a resurrection."}},{"text":" "},{"text":"[Process Resurrection]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:dragonball"},"hoverEvent":{"action":"show_text","value":"Process a 4x4 Dragonball resurrection only after designating the two players involved."}},{"text":" "},{"text":"[Super Dragonball]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/give PLAYER_NAME_HERE totem_of_undying"},"hoverEvent":{"action":"show_text","value":"Process a 5x5 Super Dragonball. This is not a resurrection."}}]
tellraw @r[scores={adminmenu=1..}] [{"text":"Help - ","color":"gold"},{"text":"[Admin Help]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:help"},"hoverEvent":{"action":"show_text","value":"Show the Game Manager's help documentation, including legacy commands for actions on this panel."}},{"text":" "},{"text":"[Player Help]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","value":"Show the Faceoff help information. This explains all mechanics of the game and can be run by anybody at any time with \"/trigger help\". Make sure everybody, including yourself, is familiar with the game mechanics before the start of the match."}},{"text":" "},{"text":"[Broadcast Help Command]","color":"yellow","clickEvent":{"action":"run_command","value":"/tellraw @a {\"text\":\"You can run \\\"/trigger help\\\" at any time to view the help information.\",\"color\":\"aqua\"}"},"hoverEvent":{"action":"show_text","value":"Send the help command information to all online players."}}]
tellraw @r[scores={adminmenu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={adminmenu=1..}] {"text":"This is the Admin Panel for Faceoff!","color":"light_purple"}
tellraw @r[scores={adminmenu=1..}] [{"text":"(drop a ","color":"light_purple","italic":true},{"text":"[Command Block]","color":"light_purple","italic":true,"clickEvent":{"action":"run_command","value":"/give @p command_block"}},{"text":" to open this panel again)","color":"light_purple","italic":true}]
tellraw @r[scores={adminmenu=1..}] {"text":" ","color":"aqua"}
scoreboard players set @r[scores={adminmenu=1..}] adminmenu 0
#
#
# PLAYERMENU
#
#
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"This is the Player Menu for Faceoff!","color":"light_purple"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"Here are your options:","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] [{"text":"Help - ","color":"gold"},{"text":"[Help Page]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","value":"Show the Faceoff help information. This explains all mechanics of the game and can be run by anybody at any time with \"/trigger help\". Make sure you are familiar with the game mechanics before the match begins."}}]
tellraw @r[scores={menu=1..}] [{"text":"Game - ","color":"gold"},{"text":"[Haunt]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger haunt"},"hoverEvent":{"action":"show_text","value":"Open the haunt menu. You must be dead to use this feature."}},{"text":" "},{"text":"[Boss Bars]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bars set -1"},"hoverEvent":{"action":"show_text","value":"Select how many boss bars are displayed at the top of the screen. Opening the menu will restore your boss bars setting to default."}},{"text":" "},{"text":"[DamageAlerts]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger damenu"},"hoverEvent":{"action":"show_text","value":"Select how many DamageAlerts you would like to receive throughout the game."}},{"text":" "},{"text":"[Surrender]","color":"red","clickEvent":{"action":"run_command","value":"/trigger suicide"},"hoverEvent":{"action":"show_text","value":"Become a spectator. You will die in place. You will have to confirm this action."}}]
tellraw @r[scores={menu=1..}] [{"text":"Admin - ","color":"gold"},{"text":"[Admin Panel]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @p adminmenu 1"},"hoverEvent":{"action":"show_text","value":"Show the Admin Panel. You must have operator priveleges to use this feature."}},{"text":" "},{"text":"[Admin Help]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:help"},"hoverEvent":{"action":"show_text","value":"Show the Game Manager's help documentation. You must have operator priveleges to use this feature."}}]
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"This is the Player Menu for Faceoff!","color":"light_purple"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
scoreboard players set @r[scores={menu=1..}] menu 0
tellraw @r[scores={suicide=1..},gamemode=!survival] {"text":"You cannot surrender because you are not alive.","color":"red"}
scoreboard players set @r[scores={suicide=1..},gamemode=!survival] suicide 0
tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=1}] {"text":"Are you sure you want to surrender?","color":"red"}
tellraw @r[scores={suicide=1}] {"text":"By surrendering, you will immediately die in your current position and become a spectator. You also forfeit your ability to haunt after death. Surrendered players cannot be resurrected.","color":"gold"}
tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=1}] [{"text":" "},{"text":"[Confirm Surrender]","color":"red","clickEvent":{"action":"run_command","value":"/trigger suicide set 6"},"hoverEvent":{"action":"show_text","value":"Surrender immediately."}},{"text":" "},{"text":"[Cancel]","color":"green","clickEvent":{"action":"run_command","value":"/trigger suicide set 3"},"hoverEvent":{"action":"show_text","value":"Stay alive and return to the game."}}]
tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=3}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=3}] {"text":"Surrender cancelled.","color":"aqua"}
tellraw @r[scores={suicide=3}] {"text":" ","color":"aqua"}
execute if entity @r[scores={suicide=6}] run team join h @r[scores={suicide=6}]
execute if entity @r[scores={suicide=6}] run scoreboard players set @r[scores={suicide=6}] mobkills 0
execute if entity @r[scores={suicide=6}] run kill @r[scores={suicide=6}]
execute if entity @r[scores={suicide=6}] run team join r @r[scores={suicide=6,team=1}]
execute if entity @r[scores={suicide=6}] run team join g @r[scores={suicide=6,team=2}]
execute if entity @r[scores={suicide=6}] run team join b @r[scores={suicide=6,team=3}]
execute if entity @r[scores={suicide=6}] run team join a @r[scores={suicide=6,team=4}]
execute if entity @r[scores={suicide=6}] run advancement grant @r[scores={suicide=6}] only minecraft:adventure/surrender
execute if entity @r[scores={suicide=6}] run tellraw @a [{"selector":"@r[scores={suicide=6}]"},{"text":" has surrendered from the game","color":"white"}]
execute if entity @r[scores={suicide=6}] run team join h @r[scores={suicide=6}]
scoreboard players set @r[scores={suicide=1..}] suicide 0
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