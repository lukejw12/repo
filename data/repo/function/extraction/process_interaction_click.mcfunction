execute as @e[tag=repo.ready_extraction,distance=..3] run function repo:extraction/activate_extraction_zone

kill @e[tag=repo.extraction_interaction]

execute as @e[tag=repo.ready_extraction] run tag @s remove repo.ready_extraction
execute as @e[tag=repo.ready_extraction] run tag @s add repo.locked_extraction
execute as @e[tag=repo.locked_extraction] at @s as @e[tag=repo.cover_display,distance=..3] run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_3"]