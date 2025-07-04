execute store result score #clicked_id repo.temp run scoreboard players get @s repo.extraction_id


execute as @e[tag=repo.ready_extraction] if score @s repo.extraction_id = #clicked_id repo.temp run function repo:extraction/activate_extraction_zone
execute as @e[tag=repo.ready_extraction] if score @s repo.extraction_id = #clicked_id repo.temp run tag @s remove repo.ready_extraction

kill @e[tag=repo.extraction_interaction]

execute as @e[tag=repo.ready_extraction] run tag @s add repo.locked_extraction
execute as @e[tag=repo.ready_extraction] run tag @s remove repo.ready_extraction

execute as @e[tag=repo.locked_extraction] at @s as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_3"]

execute as @e[tag=repo.locked_extraction] at @s run fill ~1 ~ ~1 ~-1 ~3 ~-1 minecraft:barrier