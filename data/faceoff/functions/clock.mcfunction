# constantly balance teams
scoreboard players set @r[team=] team 0
scoreboard players set @r[team=r] team 1
scoreboard players set @r[team=g] team 2
scoreboard players set @r[team=b] team 3
scoreboard players set @r[team=a] team 4
team join h @r[gamemode=spectator,team=!h,scores={mobkills=..0}]
team join s @r[gamemode=spectator,team=!s,scores={mobkills=1..}]
execute if entity @r[scores={gamestarted=1},gamemode=survival] run gamemode spectator @r[team=,gamemode=survival]
team join h @r[gamemode=spectator,team=]
team join d @r[scores={health=..5},team=a]
team join a @r[scores={health=6..},team=d]
team join s @r[scores={health=0,mobkills=1..},team=!s,gamemode=survival]
team join h @r[scores={health=0,mobkills=..0},team=!h,gamemode=survival]

# newly dead players get a haunt prompt
tellraw @a[scores={health=0,hauntprompt=0},gamemode=survival] [{"text":"Tip: You can run \"/trigger menu\" or ","italic":true,"color":"gray"},{"text":"[click here]","color":"gray","italic":true,"clickEvent":{"action":"suggest_command","value":"/trigger menu"}},{"text":" to access the haunt menu as a dead player.","italic":true,"color":"gray"}]
scoreboard players set @a[scores={health=0,hauntprompt=0,damagealert=1..},gamemode=survival] damagealert 3
scoreboard players set @a[scores={health=0,hauntprompt=0},gamemode=survival] hauntprompt 1

# increment tick scores
scoreboard players add @a[scores={health=1..,kills=..0,killtime=1..}] killtime 1
scoreboard players add @a[scores={health=1..,deathtime=1..}] deathtime 1

# maintain boss bar values
execute store result bossbar 1 value run worldborder get
execute store result bossbar 2 value run scoreboard players get @e[type=armor_stand,limit=1] total
execute store result score wbsize global run worldborder get
execute if entity @r[scores={ended=1}] run bossbar set 2 players

# manage game stages
execute if entity @r[scores={wbsize=100..,gamestarted=..0}] run scoreboard players set gamestarted global 1
execute if entity @r[scores={tournament=0,wbshrink=..0,wbsize=750..}] run scoreboard players set wbshrink global 1
execute if entity @r[scores={tournament=1,wbshrink=..0,wbsize=1200..}] run scoreboard players set wbshrink global 1
execute if entity @r[scores={gamego=1..}] run bossbar set 1 players @a[scores={bars=1..2,gamego=1..}]
execute if entity @r[scores={gamego=1..}] run bossbar set 4 players @a[scores={bars=2..3,gamego=1..,ended=0}]

# enable triggers
scoreboard players enable @r bars
scoreboard players enable @r help
scoreboard players enable @r menu
execute if entity @r[scores={gamestarted=1}] run scoreboard players enable @r suicide

# game advantage
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
execute if entity @r[scores={gamego=1..}] unless entity @r[scores={ended=1..}] run scoreboard players add @a advtimen 1
execute if entity @r[scores={advtimen=5..7,gamego=1..}] unless entity @r[scores={ended=1..}] run title @a[gamemode=survival,scores={ended=0,advantage=1}] actionbar {"text":"You have a game advantage! Use this power tactfully.","color":"aqua"}
execute if entity @r[scores={advtimen=4860..,gamego=1..}] unless entity @r[scores={ended=1..}] run scoreboard players set @a advtimen 0

# convert tick scores to human readable scores
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

# boss bar selection menu
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

# ore doubling
give @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] coal 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] odcoal 1
give @a[scores={oredrops=2..,gamestarted=1..,odiron=1..},gamemode=survival] raw_iron 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odiron=1..},gamemode=survival] odiron 1
give @a[scores={oredrops=2..,gamestarted=1..,odlapis=1..},gamemode=survival] lapis_lazuli 6
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odlapis=1..},gamemode=survival] odlapis 1
give @a[scores={oredrops=2..,gamestarted=1..,odgold=1..},gamemode=survival] raw_gold 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odgold=1..},gamemode=survival] odgold 1
give @a[scores={oredrops=2..,gamestarted=1..,odredstone=1..},gamemode=survival] redstone 4
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odredstone=1..},gamemode=survival] odredstone 1
give @a[scores={oredrops=2..,gamestarted=1..,oddiamond=1..},gamemode=survival] diamond 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,oddiamond=1..},gamemode=survival] oddiamond 1
give @a[scores={oredrops=2..,gamestarted=1..,odemerald=1..},gamemode=survival] emerald 1
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odemerald=1..},gamemode=survival] odemerald 1
give @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] raw_copper 3
scoreboard players remove @a[scores={oredrops=2..,gamestarted=1..,odcoal=1..},gamemode=survival] odcopper 1

# misc
clear @a[scores={fireworksallowed=0}] firework_star