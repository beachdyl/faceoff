scoreboard players set Now exist 0
scoreboard players set @a[gamemode=survival,scores={health=1..}] exist 1

# look for a few players
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

# only look for more players if in tournamnet mode
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={exist=1..}] existselect 1
execute if score tournament global matches 1 run scoreboard players operation Now exist += @r[scores={existselect=1..}] exist
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] exist 0
execute if score tournament global matches 1 run scoreboard players set @r[scores={existselect=1..}] existselect 0

# store result
execute store result bossbar 4 value run scoreboard players get Now exist
scoreboard players operation playersleft global = Now exist