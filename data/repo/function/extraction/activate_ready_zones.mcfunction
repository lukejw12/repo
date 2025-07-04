

execute as @e[tag=repo.locked_extraction] run tag @s add repo.ready_extraction
execute as @e[tag=repo.locked_extraction] run tag @s remove repo.locked_extraction

execute as @e[tag=repo.ready_extraction] at @s as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_2"]

execute as @e[tag=repo.ready_extraction] at @s if score @s repo.direction matches 0 run summon minecraft:interaction ~1.6 ~0.7 ~ {height:0.5,width:0.5,Tags:["repo.extraction_interaction"]}
execute as @e[tag=repo.ready_extraction] at @s if score @s repo.direction matches 1 run summon minecraft:interaction ~ ~0.7 ~-1.6 {height:0.5,width:0.5,Tags:["repo.extraction_interaction"]}
execute as @e[tag=repo.ready_extraction] at @s if score @s repo.direction matches 2 run summon minecraft:interaction ~-1.6 ~0.7 ~ {height:0.5,width:0.5,Tags:["repo.extraction_interaction"]}
execute as @e[tag=repo.ready_extraction] at @s if score @s repo.direction matches 3 run summon minecraft:interaction ~ ~0.7 ~1.6 {height:0.5,width:0.5,Tags:["repo.extraction_interaction"]}

execute as @e[tag=repo.ready_extraction] at @s run scoreboard players operation @e[tag=repo.extraction_interaction,distance=..2] repo.extraction_id = @s repo.extraction_id