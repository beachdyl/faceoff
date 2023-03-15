execute if entity @r[scores={wbshrink=1,tournament=0}] run worldborder set 400 1400
execute if entity @r[scores={wbshrink=1,twist=13,tournament=0}] run effect give @a invisibility 2120 1
execute if entity @r[scores={wbshrink=1,tournament=1}] run worldborder set 640 1225
execute if entity @r[scores={wbshrink=1,twist=13,tournament=1}] run effect give @a invisibility 1855 1
execute if entity @r[scores={wbshrink=1}] run scoreboard players set gamego global 1
execute if entity @r[scores={wbshrink=1}] run title @a title {"text":"Stage 1","color":"green"}
execute if entity @r[scores={wbshrink=1,tournament=0}] run title @a subtitle {"text":"Slow Worldborder","color":"green"}
execute if entity @r[scores={wbshrink=1,tournament=1}] run title @a subtitle {"text":"Fast Worldborder","color":"green"}
execute if entity @r[scores={wbshrink=1}] run tellraw @a [{"text":"Tip: You can run \"/trigger menu\" or ","italic":true,"color":"gray"},{"text":"[click here]","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger menu"}},{"text":" to toggle the visibility of the boss bars at any time during the game.","italic":true,"color":"gray"}]
execute if entity @r[scores={wbshrink=1}] at @a[gamemode=survival] as @a[gamemode=survival] run setblock ~ ~45 ~ chest{LootTable: "faceoff:sky_crate"} replace
execute if entity @r[scores={wbshrink=1}] run scoreboard players set wbstage global 1
execute if entity @r[scores={wbshrink=1}] run scoreboard players set wbshrink global 2
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run worldborder set 400.5
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run worldborder set 150 720
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run title @a title {"text":"Stage 2","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=400,wbstage=1,tournament=0}] run scoreboard players set wbstage global 2
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run worldborder set 150.5
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run worldborder set 21 280
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run title @a title {"text":"Stage 3","color":"red"}
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if entity @r[scores={ended=0,wbsize=150,wbstage=2,tournament=0}] run scoreboard players set wbstage global 3
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run worldborder set 21.5
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run worldborder set 5 700
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run title @a title {"text":"Stage 4","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run title @a subtitle {"text":"Slowest Worldborder","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=21,wbstage=3,tournament=0}] run scoreboard players set wbstage global 4
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run worldborder set 640.5
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run worldborder set 240 630
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run title @a title {"text":"Stage 2","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run title @a subtitle {"text":"Faster Worldborder","color":"yellow"}
execute if entity @r[scores={ended=0,wbsize=640,wbstage=1,tournament=1}] run scoreboard players set wbstage global 2
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run worldborder set 240.5
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run worldborder set 19 245
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run title @a title {"text":"Stage 3","color":"red"}
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run title @a subtitle {"text":"Fastest Worldborder","color":"red"}
execute if entity @r[scores={ended=0,wbsize=240,wbstage=2,tournament=1}] run scoreboard players set wbstage global 3
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run worldborder set 19.5
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run worldborder set 3 500
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run title @a title {"text":"Stage 4","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run title @a subtitle {"text":"Slow Worldborder","color":"gold"}
execute if entity @r[scores={ended=0,wbsize=19,wbstage=3,tournament=1}] run scoreboard players set wbstage global 4