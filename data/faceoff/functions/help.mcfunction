scoreboard objectives remove adminmenu
scoreboard objectives add adminmenu dropped:command_block "Admin Menu"
tellraw @p {"text":" ","color":"aqua"}
tellraw @p {"text":"This is the help documentation for the faceoff data pack!","color":"light_purple"}
tellraw @p {"text":" ","color":"aqua"}
tellraw @p {"text":"Drop a Command Block to open the Admin Panel. It is much easier to use than typing the legacy commands listed here.","color":"gold"}
tellraw @p {"text":" ","color":"aqua"}
tellraw @p {"text":"Here are your legacy command options:","color":"aqua"}
tellraw @p {"text":"All commands must be preceeded by \"/function faceoff:\"","color":"aqua","italic":true}
tellraw @p {"text":" ","color":"aqua"}
tellraw @p [{"text":"help -","color":"gold"},{"text":" Show this help screen. You can run this at any time.","color":"yellow"}]
tellraw @p [{"text":"setup -","color":"gold"},{"text":" Initial game setup. Run this first in each new world at a spawn location of your choosing.","color":"yellow"}]
tellraw @p [{"text":"teams -","color":"gold"},{"text":" Program this world to run a game with three random teams instead of a free-for-all. This also disables the Game Over sequence.","color":"yellow"}]
tellraw @p [{"text":"wither -","color":"gold"},{"text":" Program this world to spawn a wither towards the end of the game instead of using lava.","color":"yellow"}]
tellraw @p [{"text":"twist -","color":"gold"},{"text":" Program this world to use a random game twist.","color":"yellow"}]
tellraw @p [{"text":"go -","color":"gold"},{"text":" Starts the match. New players that join after this command is run will not be spectators.","color":"yellow"}]
tellraw @p [{"text":"dragonball -","color":"gold"},{"text":" Process a Dragonball resurrection. Do not run without setting scores!","color":"yellow"}]
tellraw @p {"text":"The easiest way to process a dragonball is to use the Admin Panel. If you are doing it manually instead, set dragonball scores by giving the living portal builder a score of 1 in the objective p, and giving the online player to be resurrected a score of 1 in the objective db. Then, run the dragonball command above or click the Process Resurrection button in the Admin Panel. Repeat this process for each resurrection. You do not need to set the scores back to 0 after a resurrection. For a Super Dragonball, use the Admin Panel or use the /give command to give the portal builder a totem_of_undying. The game will handle all effects regarding the totem afterwards. Remember: only the first eligible player in each game to build a Super Dragonball can get a totem. Once a player builds ANY type of Dragonball, they are no longer eligible to build ANY other Dragonball. Players that surrendered from the game cannot be resurrected.","color":"gray"}
tellraw @p {"text":" ","color":"aqua"}
tellraw @p [{"text":"Drop a ","color":"gold"},{"text":"[Command Block]","color":"gold","italic":false,"clickEvent":{"action":"run_command","value":"/give @s command_block"}},{"text":" to open the Admin Panel. It is much easier to use than typing the legacy commands listed here.","color":"gold"}]
tellraw @p {"text":" ","color":"aqua"}
tellraw @p {"text":"This is the help documentation for the faceoff data pack!","color":"light_purple"}
tellraw @p {"text":"(open chat to view the entire documentation)","color":"light_purple","italic":true}
tellraw @p {"text":" ","color":"aqua"}