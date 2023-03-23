# twist randomizer
scoreboard players operation Twist twistchoose = @r[gamemode=survival] walk
scoreboard players operation Twist twistchoose %= Thirteen mathobj
scoreboard players operation Twist twistchoose += One mathobj
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players operation twist global = Twist twistchoose
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players operation @a twist = Twist twistchoose
execute if entity @r[scores={twistchoose=1,starttimer=1..}] run scoreboard players set twistchoose global 0

# twists
# 1
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #faceoff:airplant
execute if entity @r[scores={twist=1,gamestarted=1..}] at @r[scores={twist=1,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace #faceoff:waterplant
execute if entity @r[scores={starttimer=1..,twist=1}] run title @a title {"text":"Goodbye, Foliage!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=1}] run title @a subtitle {"text":"It's Looking Very Dead Around Here...","color":"aqua"}
# 2
execute if entity @r[scores={twist=2,gamestarted=1..}] at @r[scores={twist=2,gamestarted=1..},gamemode=survival] run fill ~-10 ~-10 ~-10 ~10 ~1 ~10 stone replace coal_ore
execute if entity @r[scores={twist=2,gamestarted=1..}] at @r[scores={twist=2,gamestarted=1..},gamemode=survival] run fill ~-10 ~-1 ~-10 ~10 ~10 ~10 stone replace coal_ore
execute if entity @r[scores={starttimer=1..,twist=2}] run title @a title {"text":"Santa Loves You!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=2}] run title @a subtitle {"text":"There Doesn't Seem to be Any Coal...","color":"aqua"}
# 3
execute if entity @r[scores={twist=3,gamestarted=1..}] at @r[scores={twist=3,gamestarted=1..},gamemode=survival] run fill ~ ~119 ~ ~ ~120 ~ glass replace air
execute if entity @r[scores={starttimer=1..,twist=3}] run title @a title {"text":"Aerial Footprint!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=3}] run title @a subtitle {"text":"You Leave a Trail in the Sky...","color":"aqua"}
# 4
execute if entity @r[scores={twist=4,gamestarted=1..}] at @r[scores={twist=4,gamestarted=1..},gamemode=survival] run clear @a[gamemode=survival] bucket
execute if entity @r[scores={starttimer=1..,twist=4}] run title @a title {"text":"Container Catastrophe!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=4}] run title @a subtitle {"text":"My Buckets Keep Disappearing...","color":"aqua"}
# 5
execute if entity @r[scores={twist=5,gamestarted=1..}] at @r[scores={twist=5,gamestarted=1..},gamemode=survival] run effect give @r[gamemode=survival,distance=1..8] glowing 3 0 true
execute if entity @r[scores={starttimer=1..,twist=5}] run title @a title {"text":"Radioactive Players!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=5}] run title @a subtitle {"text":"Everyone Around Me is Glowing...","color":"aqua"}
# 6
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify a nametagVisibility never
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify r nametagVisibility never
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify g nametagVisibility never
execute if entity @r[scores={twist=6,starttimer=1..}] at @r[scores={twist=6,starttimer=1..},gamemode=survival] run team modify b nametagVisibility never
execute if entity @r[scores={starttimer=1..,twist=6}] run title @a title {"text":"Incognito Mode!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=6}] run title @a subtitle {"text":"Your Nametag is Transparent...","color":"aqua"}
# 7
execute if entity @r[scores={twist=7,gamestarted=1..}] at @r[scores={twist=7,gamestarted=1..},gamemode=survival] run clear @a[gamemode=survival] shield
execute if entity @r[scores={starttimer=1..,twist=7}] run title @a title {"text":"I Feel Exposed!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=7}] run title @a subtitle {"text":"Shields Are a Figment of Your Imagination...","color":"aqua"}
# 8
execute if entity @r[scores={twist=8,gamestarted=1..}] at @r[scores={twist=8,gamestarted=1..},gamemode=survival] run effect give @r[gamemode=survival] bad_omen 99999 1 true
execute if entity @r[scores={starttimer=1..,twist=8}] run title @a title {"text":"Testificate Danger!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=8}] run title @a subtitle {"text":"I'd Avoid Villages If I Were You...","color":"aqua"}
# 9
execute if entity @r[scores={twist=9,gamestarted=1..}] at @r[scores={twist=9,gamestarted=1..},gamemode=survival] as @r[scores={twist=9,gamestarted=1..},gamemode=survival] run effect give @r[gamemode=survival,distance=1..5] nausea 2 0 true
execute if entity @r[scores={starttimer=1..,twist=9}] run title @a title {"text":"Unpleasant Interactions!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=9}] run title @a subtitle {"text":"Being Near Others Makes You Feel Queasy...","color":"aqua"}
# 10
execute if entity @r[scores={twist=10,starttimer=1..}] at @r[scores={twist=10,starttimer=1..},gamemode=survival] run scoreboard players set fireworksallowed global 1
execute if entity @r[scores={starttimer=1..,twist=10}] run title @a title {"text":"Explosive Strategies!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=10}] run title @a subtitle {"text":"Fireworks Stars are Craftable...","color":"aqua"}
# 11
execute if entity @r[scores={twist=11,gamestarted=1..}] at @r[scores={twist=11,gamestarted=1..},gamemode=survival] run effect give @e[distance=..10,type=#faceoff:passive] resistance 8 4 false
execute if entity @r[scores={starttimer=1..,twist=11}] run title @a title {"text":"Extreme Veganism!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=11}] run title @a subtitle {"text":"You Can't Even Kill Them...","color":"aqua"}
# 12
execute if entity @r[scores={twist=12,starttimer=1..}] at @r[scores={twist=12,starttimer=1..},gamemode=survival] run scoreboard players set virusenabled global 1
execute if entity @r[scores={starttimer=1..,twist=12}] run title @a title {"text":"Faceoff Virus!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=12}] run title @a subtitle {"text":"Practice Social Distancing...","color":"aqua"}
# 13
execute if entity @r[scores={starttimer=1..,twist=13}] run title @a title {"text":"Ghostly Gaming!","color":"green"}
execute if entity @r[scores={starttimer=1..,twist=13}] run title @a subtitle {"text":"You'll be Hard to See For a Bit...","color":"aqua"}