
execute as @e[tag=repo.locked_extraction] run tag @s add repo.ready_extraction
execute as @e[tag=repo.locked_extraction] at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 minecraft:air
execute as @e[tag=repo.locked_extraction] run tag @s remove repo.locked_extraction

execute as @e[tag=repo.ready_extraction] at @s as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_2"]

execute as @e[tag=repo.ready_extraction] at @s run summon minecraft:interaction ~1.6 ~0.7 ~ {height:0.5,width:0.5,Tags:["repo.extraction_interaction"]}