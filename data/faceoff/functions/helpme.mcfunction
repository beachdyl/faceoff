tellraw @r[scores={help=1..}] {"text":" ","color":""}
tellraw @r[scores={help=1..}] {"text":"This is the help information for Faceoff!","color":"light_purple"}
tellraw @r[scores={help=1..}] {"text":" ","color":""}

tellraw @r[scores={help=1..}] {"text":"Objective and Winning","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"The objective of Faceoff is to be the last player or team alive. Once a player dies in the game, they will not be able to respawn (unless your game supports resurrection). Once you are the last player alive, the game will end. An alternative way to win the game is to kill the Ender Dragon.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Worldborder Stages","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"As the game progresses, the worldborder will go through four distinct stages. The worldborder is slowest at Stage 1, then faster at Stage 2, then fastest at Stage 3. Stage 4 occurs after the worldborder reaches its destination and is a very slow crawl.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"LootCrates","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"At the beginning of Stage 1, a LootCrate will spawn 45 blocks above your head containing some useful goodies. Make sure to get your LootCrate as soon as it spawns, because if you don't, somebody else might.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Rising Lava","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"If the game progresses for a while without having a winner, lava will start rising from the bottom of the world. A bar will appear at the top of the screen when this begins. Depending on how your game is configured, a Wither may spawn at this time instead. If this happens, lava will not rise.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Altitude Sickness","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"During Stage 3, players that are at a high altitude will begin to experience Altitude Sickness. The effects of Altitude Sickness get worse as you get higher. You will receive a warning shortly before the effects begin if you are at risk. Altitude Sickness can indirectly kill you.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Dragonballs","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"A Dragonball is a structure you can build to resurrect a player that has been killed, as long as they are still in the game and did not surrender. To make a Dragonball, you must create and light a nether portal with an interior (area of portal blocks) that is 4 blocks wide and 4 blocks tall. Once you have done that, tell the game manager who you would like to bring back and they will process the resurrection. They can learn how to do that by selecting \"Admin Help\" from the Player Menu. Once you build a Dragonball, you can no longer build another Dragonball or a Super Dragonball. Once the resurrection occurs, it will be announced in chat with an advancement. Not all game managers will allow resurrections.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Super Dragonballs","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"A Super Dragonball is a structure you can build to get a Totem of Undying. To make a Super Dragonball, you must create and light a nether portal with an interior (area of portal blocks) that is 5 blocks wide and 5 blocks tall. Once you have done that, tell the game manager and they will give you the totem. They can learn how to do that by selecting \"Admin Help\" from the Player Menu. Once anybody in the game builds a Super Dragonball, nobody else in the game can build a Super Dragonball. Also, the person who creates the Super Dragonabll can no longer make a Dragonball. An annoucement in chat will not be made until you use your Totem of Undying to cheat death.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"Haunting","color":"gold"}
tellraw @r[scores={help=1..}] [{"text":"Players that have died will have the opportunity to haunt the living players periodically. Each haunt costs a certain number of Haunt Points to use. With Haunt Points, spectators will have the ability to haunt the world or a random healthy player within it. You will not be able to haunt if you did not kill at least one mob during the time you were alive. Dead players that can haunt will have \"(Ghost)\" after their name, whereas dead players that cannot haunt will have \"(Spectator)\" after their name. To learn more about haunts run \"/trigger menu\", or ","color":"yellow"},{"text":"[click here]","clickEvent":{"action":"run_command","value":"/trigger haunt set -1"},"color":"yellow"},{"text":" after you have died.","color":"yellow"}]
tellraw @r[scores={help=1..}] {"text":"Game Advantage","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"The game manager can choose to assign a game advantage to a maximum of one player at a time. This gives the player special status effects which will disable if they get too close to any other player. Players will be notified above their hotbar periodically that they have a game advantage. Nobody else will know an advantage is in play, unless the game is in tournament mode.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":" ","color":""}

tellraw @r[scores={help=1..}] {"text":"Credits","color":"gold"}
tellraw @r[scores={help=1..}] {"text":"This game was designed, produced, and scripted by DBHerobrine. You can find me on social media at @beachdyl. Special thanks to Raphaelist for bug testing, and to Supertopia for the support.","color":"yellow"}
tellraw @r[scores={help=1..}] {"text":"","color":""}
tellraw @r[scores={help=1..}] {"text":"This is the help information for Faceoff!","color":"light_purple"}
tellraw @r[scores={help=1..}] {"text":"(open chat to view all of the information)","color":"light_purple","italic":true}
tellraw @r[scores={help=1..}] {"text":" ","color":""}
scoreboard players set @r[scores={help=1..}] help 0