execute unless score gamestarted global matches 1 run worldborder set 21
execute unless score gamestarted global matches 1 run worldborder warning time 15
execute unless score gamestarted global matches 1 run bossbar set 1 max 1200
execute unless score gamestarted global matches 1 run bossbar set 2 max 6300
execute unless score gamestarted global matches 1 run scoreboard players set tournament global 1
execute unless score gamestarted global matches 1 run tellraw @a [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Success! ","color":"green"},{"text":"A game manager has enabled Tournament mode!"}]
execute if score gamestarted global matches 1 run tellraw @a [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> "},{"text":"Error! ","color":"red"},{"text":"A game manager has attempted to enable Tournament mode after the game has started! Tournament mode can only be enabled during Lobby Time."}]