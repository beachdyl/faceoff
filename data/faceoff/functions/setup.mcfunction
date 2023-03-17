gamerule commandBlockOutput false

# center world
worldborder center ~ ~
setworldspawn ~ ~ ~
worldborder set 19
worldborder warning time 10
worldborder warning distance 0

# reset for subsequent initializaitons
kill @e[type=armor_stand]
summon armor_stand ~ -63 ~ {Invisible:1,NoGravity:1}

# add all objectives
scoreboard objectives add adminmenu dropped:command_block "Admin Menu"
scoreboard objectives add adv dummy "Assign Advantage"
scoreboard objectives add advantage dummy "Advantage"
scoreboard objectives add advtimen dummy "Advantage Message"
scoreboard objectives add bars trigger "Enable Boss Bars"
scoreboard objectives add boomhauntee dummy "Boom Hauntee"
scoreboard objectives add boomhaunter dummy "Boom Haunter"
scoreboard objectives add boomtime dummy "Boom Clock"
scoreboard objectives add boomtimer dummy "Boom Sequence"
scoreboard objectives add damage1 dummy "Damage Record 1"
scoreboard objectives add damage2 dummy "Damage Record 2"
scoreboard objectives add damage3 dummy "Damage Record 3"
scoreboard objectives add damage4 dummy "Damage Record 4"
scoreboard objectives add damagealert dummy "DamageAlert Level"
scoreboard objectives add damagealertt custom:play_time "Time Since DamageAlert"
scoreboard objectives add damagecalc1 dummy "Calculated Damage 1"
scoreboard objectives add damagecalc2 dummy "Calculated Damage 2"
scoreboard objectives add damagecalc3 dummy "Calculated Damage 3"
scoreboard objectives add damagecalc4 dummy "Calculated Damage 4"
scoreboard objectives add damagetimer custom:play_time "Damage Monitor Timer"
scoreboard objectives add damenu trigger "DamageAlert Menu"
scoreboard objectives add db dummy "Dragonball"
scoreboard objectives add deathtime dummy "Ticks Before Dying"
scoreboard objectives add deathtimem dummy "Minutes Before Dying"
scoreboard objectives add deathtimes dummy "Seconds Before Dying"
scoreboard objectives add enddo dummy "Final Challenge"
scoreboard objectives add ended dummy "Game Ended"
scoreboard objectives add endewaittime dummy "End Effect Wait Clock"
scoreboard objectives add endewaittimen dummy "End Effect Wait Sounds"
scoreboard objectives add endewaittimer dummy "End Effect Wait Sequence"
scoreboard objectives add exist dummy "Existence"
scoreboard objectives add existselect dummy "Existence Selector"
scoreboard objectives add fireworksallowed dummy "Fireworks Allowed"
scoreboard objectives add gameclock custom:play_one_minute "Game Clock"
scoreboard objectives add gamego dummy "Game Begun"
scoreboard objectives add gamestarted dummy "Game Started"
scoreboard objectives add global dummy "Global Objectives"
scoreboard objectives add haunt trigger "Haunt"
scoreboard objectives add hauntee dummy "Haunt Victim"
scoreboard objectives add hauntmath dummy "Haunt Math"
scoreboard objectives add hauntpoints dummy "Haunt Points"
scoreboard objectives add hauntprompt dummy "Haunt Prompt"
scoreboard objectives add haunttime custom:play_time "Haunt Timer"
scoreboard objectives add hauntwarntimen dummy "Haunt Warning Message"
scoreboard objectives add health health "Health"
scoreboard objectives add healthawaittime dummy "Health Alert Wait Clock"
scoreboard objectives add healthawaittimen dummy "Health Alert Wait Sounds"
scoreboard objectives add healthawaittimer dummy "Health Alert Wait Sequence"
scoreboard objectives add help trigger "Help Me"
scoreboard objectives add hunger food "Hunger"
scoreboard objectives add infected dummy "Virus Severity"
scoreboard objectives add kills custom:player_kills "Players Killed"
scoreboard objectives add killtime dummy "Ticks Before Killing"
scoreboard objectives add level dummy "Lava Level Timer"
scoreboard objectives add lobbyblindness dummy "Lobby Blindness"
scoreboard objectives add lobbytimen dummy "Lobby Message"
scoreboard objectives add lobbytimer dummy "Lobby Time"
scoreboard objectives add mathobj dummy "Dev Math Objective"
scoreboard objectives add menu trigger "Menu"
scoreboard objectives add mobkills custom:mob_kills "Mobs Killed"
scoreboard objectives add oredrops dummy "Ore Drop Rate"
scoreboard objectives add odcoal mined:coal_ore "Coal Mined"
scoreboard objectives add odcopper mined:copper_ore "Copper Mined"
scoreboard objectives add odiron mined:iron_ore "Iron Mined"
scoreboard objectives add odlapis mined:lapis_ore "Lapis Lazuli Mined"
scoreboard objectives add odgold mined:gold_ore "Gold Mined"
scoreboard objectives add odredstone mined:redstone_ore "Redstone Mined"
scoreboard objectives add oddiamond mined:diamond_ore "Diamond Mined"
scoreboard objectives add odemerald mined:emerald_ore "Emerald Mined"
scoreboard objectives add p dummy "Dragonball Portal"
scoreboard objectives add playersleft dummy "Living Players Remaining"
scoreboard objectives add starttimer dummy "Start Time"
scoreboard objectives add suicide trigger "Suicide"
scoreboard objectives add team dummy "Team"
scoreboard objectives add timeselect dummy "Time Selector"
scoreboard objectives add total dummy "Lava Total Timer"
scoreboard objectives add tournament dummy "Tournament Mode"
scoreboard objectives add twist dummy "Twist Enabled"
scoreboard objectives add twistchoose dummy "Twist Selection Pending"
scoreboard objectives add virusassigned dummy "Virus Assigned"
scoreboard objectives add virusenabled dummy "Virus Enabled"
scoreboard objectives add virustime custom:play_time "Ticks Virus in Host"
scoreboard objectives add virustimem dummy "Minutes Virus in Host"
scoreboard objectives add waittime dummy "Wait Clock"
scoreboard objectives add waittimen dummy "Wait Sounds"
scoreboard objectives add waittimer dummy "Wait Sequence"
scoreboard objectives add walk custom:walk_one_cm "Centimeters Walked"
scoreboard objectives add wbshrink dummy "Worldborder Shrink"
scoreboard objectives add wbsize dummy "Worldborder Size"
scoreboard objectives add wbstage dummy "Border Stage"
scoreboard objectives add wspawned dummy "Wither Spawned"

# tab menu
scoreboard objectives setdisplay list health

# configure scoreboard teams
team add a "Players"
team add d "Dying Players"
team add s "Ghosts"
team add h "Spectators"
team modify a collisionRule never
team modify a friendlyFire true
team modify a seeFriendlyInvisibles false
team modify a deathMessageVisibility always
team modify a prefix ""
team modify a suffix " (Alive)"
team modify a color yellow
team modify d collisionRule never
team modify d friendlyFire true
team modify d seeFriendlyInvisibles false
team modify d deathMessageVisibility always
team modify d prefix ""
team modify d suffix " (Dying)"
team modify d color yellow
team modify s collisionRule never
team modify s friendlyFire false
team modify s seeFriendlyInvisibles true
team modify s deathMessageVisibility never
team modify s prefix ""
team modify s suffix " (Ghost)"
team modify s color dark_purple
team modify h collisionRule never
team modify h friendlyFire false
team modify h seeFriendlyInvisibles true
team modify h deathMessageVisibility never
team modify h prefix ""
team modify h suffix " (Spectator)"
team modify h color dark_purple
team leave @a

# set gamerules
gamerule spectatorsGenerateChunks false
gamerule spawnRadius 3
gamerule randomTickSpeed 6
gamerule reducedDebugInfo true
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule drowningDamage false

# lock lobby time
time set 18000

# center armor stand

# set up bossbars
bossbar add 1 "World Border"
bossbar set 1 color green
bossbar set 1 max 750
bossbar set 1 players
bossbar add 2 "Rising Lava"
bossbar set 2 color red
bossbar set 2 max 8400
bossbar set 2 players
bossbar add 3 "Lobby Time"
bossbar set 3 color blue
bossbar set 3 max 150
bossbar set 3 value 150
bossbar set 3 players
bossbar add 4 "Players in Game"
bossbar set 4 name "Players in Game"
bossbar set 4 color yellow
bossbar set 4 players
bossbar add 6 "Effects"
bossbar set 6 max 200
bossbar set 6 name "Impending Hunger"
bossbar set 6 color blue
bossbar set 6 players

# prioritize datapack
datapack enable "file/faceoff" first

#initialize variables
scoreboard players set lobbytimer global 1
scoreboard players set lobbyblindness global 0
scoreboard players set gamego global 0
scoreboard players set gamestarted global 0
scoreboard players set oredrops global 1
scoreboard players set tournament global 0
scoreboard players set fireworksallowed global 0
scoreboard players set virusenabled global 0
scoreboard players set @a mobkills 0
scoreboard players set @a kills 0
scoreboard players set @a deathtime 0
scoreboard players set @a gameclock 0
scoreboard players reset Total exist
scoreboard players reset Bar waittime
scoreboard players set wbshrink global 0
scoreboard players set @a waittime 0
scoreboard players set @a endewaittime 0
scoreboard players set enddo global 1
scoreboard players set twist global 0
scoreboard players set @e[type=armor_stand] level 0
scoreboard players set @e[type=armor_stand] total 0

# math variables
scoreboard players set Twenty mathobj 20
scoreboard players set Sixty mathobj 60
scoreboard players set OneThousandOneHundredSixtySix mathobj 1166
scoreboard players set OneThousandTwoHundred mathobj 1200
scoreboard players set Four mathobj 4
scoreboard players set Five mathobj 5
scoreboard players set Seven mathobj 7
scoreboard players set Eight mathobj 8
scoreboard players set Nine mathobj 9
scoreboard players set Ten mathobj 10
scoreboard players set Eleven mathobj 11
scoreboard players set Twelve mathobj 12
scoreboard players set Thirteen mathobj 13
scoreboard players set One mathobj 1

# announce ready
tellraw @p [{"text":"When you're ready, you can ","color":"green"},{"text":"[click here]","color":"light_green","italic":false,"clickEvent":{"action":"run_command","value":"/whitelist off"}},{"text":" to disable the whitelist, if necessary.","color":"green"}]
