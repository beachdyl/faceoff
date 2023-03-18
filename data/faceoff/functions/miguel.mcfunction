# welcome
tellraw @a[scores={playtime=20}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> Hey there! Welcome to the game!"}]
tellraw @a[scores={playtime=60}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> If you want to check out the rules, "},{"text":"[click here]","clickEvent":{"action":"run_command","value":"/trigger help"}},{"text":" or type \"/trigger help\" to open the help page."}]

# game start status
tellraw @a[scores={playtime=100,lobbytimer=1,playersleft=..3}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> We are just waiting right now. We need 4 players to start the game."}]
tellraw @a[scores={playtime=100,lobbytimer=1,playersleft=4..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> We are just waiting for the game to start. It should start any minute."}]
tellraw @a[scores={playtime=100,waittimer=1}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> You joined just in time. The game is starting now!"}]
tellraw @a[scores={playtime=100,starttimer=0,waittimer=0,lobbytimer=0},team=] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> You joined barely too late! The game just started, so you will spectate this game."}]
tellraw @a[scores={playtime=100,gamestarted=1},gamemode=!survival] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> You joined after the game started, so you are a spectator."}]