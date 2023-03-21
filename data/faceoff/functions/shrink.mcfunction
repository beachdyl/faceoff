# stage 1 shrinking
execute if score wbshrink global matches 1 if score tournament global matches 0 run worldborder set 400 1400
execute if score wbshrink global matches 1 if score tournament global matches 0 if score twist global matches 13 run effect give @a invisibility 2120 1
execute if score wbshrink global matches 1 if score tournament global matches 1 run worldborder set 640 1225
execute if score wbshrink global matches 1 if score tournament global matches 1 if score twist global matches 13 run effect give @a invisibility 1855 1

# loot crate
execute if score wbshrink global matches 1 at @a[gamemode=survival] as @a[gamemode=survival] run setblock ~ ~45 ~ chest{LootTable: "faceoff:sky_crate"} replace

# initial scores and messages
execute if score wbshrink global matches 1 run scoreboard players set gamego global 1
execute if score wbshrink global matches 1 run title @a title {"text":"Stage 1","color":"green"}
execute if score wbshrink global matches 1 if score tournament global matches 0 run title @a subtitle {"text":"Slow Worldborder","color":"green"}
execute if score wbshrink global matches 1 if score tournament global matches 1 run title @a subtitle {"text":"Fast Worldborder","color":"green"}
execute if score wbshrink global matches 1 run tellraw @a [{"text":"<"},{"text":"Miguel","color":"aqua"},{"text":"> Want to change which boss bars you can see? You can run \"/trigger menu\" or "},{"text":"[click here]","clickEvent":{"action":"run_command","value":"/trigger menu"}},{"text":" to edit them at any time during the game."}]
execute if score wbshrink global matches 1 run scoreboard players set wbstage global 1
execute if score wbshrink global matches 1 run scoreboard players set wbshrink global 2

# stages 2-4 for standard mode
execute if score ended global matches 0 if score wbsize global matches 400 if score wbstage global matches 1 if score tournament global matches 0 run worldborder set 400.5
execute if score ended global matches 0 if score wbsize global matches 400 if score wbstage global matches 1 if score tournament global matches 0 run worldborder set 150 720
execute if score ended global matches 0 if score wbsize global matches 400 if score wbstage global matches 1 if score tournament global matches 0 run title @a title {"text":"Stage 2","color":"yellow"}
execute if score ended global matches 0 if score wbsize global matches 400 if score wbstage global matches 1 if score tournament global matches 0 run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if score ended global matches 0 if score wbsize global matches 400 if score wbstage global matches 1 if score tournament global matches 0 run scoreboard players set wbstage global 2
execute if score ended global matches 0 if score wbsize global matches 150 if score wbstage global matches 2 if score tournament global matches 0 run worldborder set 150.5
execute if score ended global matches 0 if score wbsize global matches 150 if score wbstage global matches 2 if score tournament global matches 0 run worldborder set 21 280
execute if score ended global matches 0 if score wbsize global matches 150 if score wbstage global matches 2 if score tournament global matches 0 run title @a title {"text":"Stage 3","color":"red"}
execute if score ended global matches 0 if score wbsize global matches 150 if score wbstage global matches 2 if score tournament global matches 0 run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if score ended global matches 0 if score wbsize global matches 150 if score wbstage global matches 2 if score tournament global matches 0 run scoreboard players set wbstage global 3
execute if score ended global matches 0 if score wbsize global matches 21 if score wbstage global matches 3 if score tournament global matches 0 run worldborder set 21.5
execute if score ended global matches 0 if score wbsize global matches 21 if score wbstage global matches 3 if score tournament global matches 0 run worldborder set 5 700
execute if score ended global matches 0 if score wbsize global matches 21 if score wbstage global matches 3 if score tournament global matches 0 run title @a title {"text":"Stage 4","color":"gold"}
execute if score ended global matches 0 if score wbsize global matches 21 if score wbstage global matches 3 if score tournament global matches 0 run title @a subtitle {"text":"Slowest Worldborder","color":"gold"}
execute if score ended global matches 0 if score wbsize global matches 21 if score wbstage global matches 3 if score tournament global matches 0 run scoreboard players set wbstage global 4

# stages 2-4 for tournament mode
execute if score ended global matches 0 if score wbsize global matches 640 if score wbstage global matches 1 if score tournament global matches 1 run worldborder set 640.5
execute if score ended global matches 0 if score wbsize global matches 640 if score wbstage global matches 1 if score tournament global matches 1 run worldborder set 240 630
execute if score ended global matches 0 if score wbsize global matches 640 if score wbstage global matches 1 if score tournament global matches 1 run title @a title {"text":"Stage 2","color":"yellow"}
execute if score ended global matches 0 if score wbsize global matches 640 if score wbstage global matches 1 if score tournament global matches 1 run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if score ended global matches 0 if score wbsize global matches 640 if score wbstage global matches 1 if score tournament global matches 1 run scoreboard players set wbstage global 2
execute if score ended global matches 0 if score wbsize global matches 240 if score wbstage global matches 2 if score tournament global matches 1 run worldborder set 240.5
execute if score ended global matches 0 if score wbsize global matches 240 if score wbstage global matches 2 if score tournament global matches 1 run worldborder set 19 245
execute if score ended global matches 0 if score wbsize global matches 240 if score wbstage global matches 2 if score tournament global matches 1 run title @a title {"text":"Stage 3","color":"red"}
execute if score ended global matches 0 if score wbsize global matches 240 if score wbstage global matches 2 if score tournament global matches 1 run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if score ended global matches 0 if score wbsize global matches 240 if score wbstage global matches 2 if score tournament global matches 1 run scoreboard players set wbstage global 3
execute if score ended global matches 0 if score wbsize global matches 19 if score wbstage global matches 3 if score tournament global matches 1 run worldborder set 19.5
execute if score ended global matches 0 if score wbsize global matches 19 if score wbstage global matches 3 if score tournament global matches 1 run worldborder set 3 500
execute if score ended global matches 0 if score wbsize global matches 19 if score wbstage global matches 3 if score tournament global matches 1 run title @a title {"text":"Stage 4","color":"gold"}
execute if score ended global matches 0 if score wbsize global matches 19 if score wbstage global matches 3 if score tournament global matches 1 run title @a subtitle {"text":"Slow Worldborder","color":"gold"}
execute if score ended global matches 0 if score wbsize global matches 19 if score wbstage global matches 3 if score tournament global matches 1 run scoreboard players set wbstage global 4