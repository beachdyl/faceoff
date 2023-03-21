execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run scoreboard players reset Bar waittime
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run bossbar set 3 name "Game Over"
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run bossbar set 3 value 150
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run bossbar set 3 players @a
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run bossbar set 4 players
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run teleport @a @r[gamemode=survival,scores={health=1..}]
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run title @a times 20 150 20
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run title @a title {"text":"Game Over!","color":"red"}
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run title @a subtitle [{"selector":"@r[gamemode=survival,scores={health=1..}]","color":"gold"},{"text":" wins!","color":"gold"}]
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run tellraw @r[gamemode=survival,scores={health=1..}] [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> Congratulations! You have won the game."}]
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run scoreboard players set @e[type=armor_stand] total 10000
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run scoreboard objectives setdisplay sidebar.team.dark_purple deathtimem
execute if score Now exist matches 1 if score gamestarted global matches 1 unless score ended global matches 1 run scoreboard players set ended global 1
execute if score Now exist matches 1 if score ended global matches 1 run gamemode spectator @a[gamemode=!spectator]