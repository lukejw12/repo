execute if score @s repo.direction matches 0 run summon minecraft:armor_stand ~-1.1 ~2.2 ~ {CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["repo.value_display"],CustomName:{text:"$0",color:"green"}}

execute if score @s repo.direction matches 1 run summon minecraft:armor_stand ~ ~2.2 ~1.1 {CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["repo.value_display"],CustomName:{text:"$0",color:"green"}}

execute if score @s repo.direction matches 2 run summon minecraft:armor_stand ~1.1 ~2.2 ~ {CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["repo.value_display"],CustomName:{text:"$0",color:"green"}}

execute if score @s repo.direction matches 3 run summon minecraft:armor_stand ~ ~2.2 ~-1.1 {CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["repo.value_display"],CustomName:{text:"$0",color:"green"}}

scoreboard players operation @e[tag=repo.value_display,limit=1,sort=nearest] repo.extraction_id = @s repo.extraction_id