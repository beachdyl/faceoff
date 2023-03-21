# establish health and damage over time scores
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

# alert notifications
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"yellow"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"yellow"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"yellow"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=10..,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=3..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"yellow"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=10..,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"gold"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"gold"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"gold"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=3..9,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=2..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"gold"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=3..9,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is badly injured.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"red"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"red"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"red"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=1..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Damage alert! ","color":"red"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" just took significant damage and is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc1=7..,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc2=7..,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc3=7..,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={damagealert=..0,tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc4=7..,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc1=1..6,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc1=1..6,damagetimer=5,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc2=1..6,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc2=1..6,damagetimer=25,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc3=1..6,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc3=1..6,damagetimer=45,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]
execute if entity @r[scores={damagecalc4=1..6,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival] run tellraw @a[scores={tournament=0}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Health alert! ","color":"red"},{"selector":"@a[scores={damagecalc4=1..6,damagetimer=65,health=1..2,damagealertt=50..},gamemode=survival]"},{"text":" is at risk of imminent death.","color":"white"}]

# timers to prevent repetitive alerts
execute if entity @r[scores={damagecalc1=1..,damagetimer=5,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc2=1..,damagetimer=25,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc3=1..,damagetimer=45,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc4=1..,damagetimer=65,health=1..2},gamemode=survival] run scoreboard players set healthawaittimer global 1
execute if entity @r[scores={damagecalc1=1..,damagetimer=5,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=25,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=45,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0
execute if entity @r[scores={damagecalc1=1..,damagetimer=65,health=1..,damagealertt=50..},gamemode=survival] run scoreboard players set damagealertt global 0

# damage alert menu
scoreboard players set @r[scores={damenu=1}] damenu -1
scoreboard players set @r[scores={damenu=6..}] damenu -1
tellraw @r[scores={damenu=..-1}] {"text":"Available Damage Alert Levels:","color":"light_purple"}
tellraw @r[scores={damenu=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={damenu=..-1}] [{"text":"[3] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 5"}},{"text":" Imminent death, severe injury, and large hit alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[2] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 4"}},{"text":" Imminent death and severe injury alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[1] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 3"}},{"text":" Imminent death alerts.","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] [{"text":"[0] -","color":"gold","clickEvent":{"action":"run_command","value":"/trigger damenu set 2"}},{"text":" No alerts. (*)","color":"yellow"}]
tellraw @r[scores={damenu=..-1}] {"text":"      (*) If the game is not in tournament mode, all players will receive a health alert when somebody is at risk of imminent death.","color":"gray","italic":true}
tellraw @r[scores={damenu=..-1}] {"text":" ","color":"gold"}
tellraw @r[scores={damenu=..-1}] [{"text":"To select a damage alert level, click on a gold number in the list above. Click ","color":"light_purple"},{"text":"[here]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger damagealert set -1"}},{"text":" to restore to default.","color":"light_purple"}]
scoreboard players set @r[scores={damenu=2}] damagealert 0
scoreboard players set @r[scores={damenu=3}] damagealert 1
scoreboard players set @r[scores={damenu=4}] damagealert 2
scoreboard players set @r[scores={damenu=5}] damagealert 3
scoreboard players set @r[scores={damenu=..-1}] damenu 0
scoreboard players set @r[scores={damenu=1..}] damenu 0

# default damage alert values
scoreboard players set @r[scores={damagealert=..-1,tournament=0}] damagealert 2
scoreboard players set @r[scores={damagealert=..-1,tournament=1}] damagealert 1

# note block effect
execute if entity @r[scores={healthawaittimer=1..}] run scoreboard players add @a healthawaittime 1
execute if entity @r[scores={healthawaittimer=1..}] run scoreboard players add @a healthawaittimen 1
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] at @a as @a run playsound minecraft:block.note_block.harp master @a[scores={tournament=0}] ~ ~ ~ 100 0.5
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] at @a as @a run playsound minecraft:block.note_block.harp master @a[scores={tournament=1,damagealert=1..}] ~ ~ ~ 100 0.5
execute if entity @r[scores={healthawaittimen=5..,healthawaittimer=1..}] run scoreboard players set @a healthawaittimen 0
execute if entity @r[scores={healthawaittime=16..,healthawaittimer=1..}] run scoreboard players set @a healthawaittimen 0
execute if entity @r[scores={healthawaittime=16..,healthawaittimer=1..}] run scoreboard players set healthawaittimer global 0