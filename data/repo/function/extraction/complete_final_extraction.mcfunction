function repo:extraction/extract_all_items


execute store result score @s repo.temp5 run scoreboard players get @s repo.extraction_id
execute as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.temp5 run kill @s
execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.temp5 run kill @s

tag @s remove repo.final_extraction
tag @s remove repo.extraction_zone
tag @s add repo.completed_extraction

function repo:extraction/check_for_ready_zones

kill @s