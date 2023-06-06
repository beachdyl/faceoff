# player menu UI
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"This is the Player Menu for Faceoff!","color":"light_purple"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"Here are your options:","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}

tellraw @r[scores={menu=1..}] [{"text":"Help - ","color":"gold"},{"text":"[Help Page]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help"},"hoverEvent":{"action":"show_text","value":"Show the Faceoff help information. This explains all mechanics of the game and can be run by anybody at any time with \"/trigger help\". Make sure you are familiar with the game mechanics before the match begins."}}]

tellraw @r[scores={menu=1..}] [{"text":"Game - ","color":"gold"},{"text":"[Haunt]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger haunt"},"hoverEvent":{"action":"show_text","value":"Open the haunt menu. You must be dead to use this feature."}},{"text":" "},{"text":"[Boss Bars]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger bars set -1"},"hoverEvent":{"action":"show_text","value":"Select how many boss bars are displayed at the top of the screen. Opening the menu will restore your boss bars setting to default."}},{"text":" "},{"text":"[Damage Alerts]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger damenu"},"hoverEvent":{"action":"show_text","value":"Select how many damage alerts you would like to receive throughout the game."}},{"text":" "},{"text":"[Surrender]","color":"red","clickEvent":{"action":"run_command","value":"/trigger suicide"},"hoverEvent":{"action":"show_text","value":"Become a spectator. You will die in place. You will have to confirm this action."}}]

tellraw @r[scores={menu=1..}] [{"text":"Admin - ","color":"gold"},{"text":"[Admin Panel]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @p adminmenu 1"},"hoverEvent":{"action":"show_text","value":"Show the Admin Panel. You must have operator priveleges to use this feature."}},{"text":" "},{"text":"[Admin Help]","color":"yellow","clickEvent":{"action":"run_command","value":"/function faceoff:help"},"hoverEvent":{"action":"show_text","value":"Show the Game Manager's help documentation. You must have operator priveleges to use this feature."}}]

tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
tellraw @r[scores={menu=1..}] {"text":"This is the Player Menu for Faceoff!","color":"light_purple"}
tellraw @r[scores={menu=1..}] {"text":" ","color":"aqua"}
scoreboard players set @r[scores={menu=1..}] menu 0

# surrender logic
tellraw @r[scores={suicide=1..},gamemode=!survival] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error!","color":"red"},{"text":" You cannot surrender because you are not alive.","color":"red"}]
scoreboard players set @r[scores={suicide=1..},gamemode=!survival] suicide 0

tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=1}] {"text":"Are you sure you want to surrender?","color":"red"}
tellraw @r[scores={suicide=1}] [{"text":"By surrendering, ","color":"gold"},{"text":"Miguel","color":"aqua"},{"text":" will immediately kill you in your current position, then you will become a spectator. You also forfeit your ability to haunt after death. Surrendered players cannot be resurrected.","color":"gold"}]
tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=1}] [{"text":" "},{"text":"[Confirm Surrender]","color":"red","clickEvent":{"action":"run_command","value":"/trigger suicide set 6"},"hoverEvent":{"action":"show_text","value":"Surrender immediately."}},{"text":" "},{"text":"[Cancel]","color":"green","clickEvent":{"action":"run_command","value":"/trigger suicide set 3"},"hoverEvent":{"action":"show_text","value":"Stay alive and return to the game."}}]
tellraw @r[scores={suicide=1}] {"text":" ","color":"aqua"}

tellraw @r[scores={suicide=3}] {"text":" ","color":"aqua"}
tellraw @r[scores={suicide=3}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> At your request, I've cancelled your surrender."}]
tellraw @r[scores={suicide=3}] {"text":" ","color":"aqua"}

execute if entity @r[scores={suicide=6}] run team join h @r[scores={suicide=6}]
execute if entity @r[scores={suicide=6}] run scoreboard players set @r[scores={suicide=6}] mobkills 0
execute if entity @r[scores={suicide=6}] run kill @r[scores={suicide=6}]
execute if entity @r[scores={suicide=6}] run team join r @r[scores={suicide=6,team=1}]
execute if entity @r[scores={suicide=6}] run team join g @r[scores={suicide=6,team=2}]
execute if entity @r[scores={suicide=6}] run team join b @r[scores={suicide=6,team=3}]
execute if entity @r[scores={suicide=6}] run team join a @r[scores={suicide=6,team=4}]
execute if entity @r[scores={suicide=6}] run advancement grant @r[scores={suicide=6}] only minecraft:adventure/surrender
execute if entity @r[scores={suicide=6}] run tellraw @a [{"selector":"@r[scores={suicide=6}]"},{"text":" has requested death, and ","color":"white"},{"text":"Miguel","color":"aqua"},{"text":" obliged."}]
execute if entity @r[scores={suicide=6}] run team join h @r[scores={suicide=6}]

scoreboard players set @r[scores={suicide=1..}] suicide 0