tag @s remove repo.ready_extraction

execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id store result score @s repo.temp6 run data get entity @s Pos[1] 1000
execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run scoreboard players add @s repo.temp6 4000
execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id store result entity @s Pos[1] double 0.001 run scoreboard players get @s repo.temp6

execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_1"]