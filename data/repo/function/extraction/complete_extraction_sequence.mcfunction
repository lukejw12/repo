execute as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/icons/extraction_zone_1"]

execute store result score @s repo.temp3 run data get entity @s Pos[1] 1000
scoreboard players set @s repo.temp4 -2750
scoreboard players operation @s repo.temp3 += @s repo.temp4
tag @s add repo.smoke_particles
schedule function repo:extraction/particles 9t
execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id store result entity @s Pos[1] double 0.001 run scoreboard players get @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.temp3

execute as @e[tag=repo.cover_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_0"]

scoreboard players set @s repo.final_extraction_timer 100

tag @s remove repo.quota_complete_sequence
tag @s add repo.final_extraction