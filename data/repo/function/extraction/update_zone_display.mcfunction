scoreboard players set @s repo.temp2 0
execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 = @s repo.collected_value
execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 *= #100 repo.temp
execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 /= @s repo.quota

execute unless entity @s[tag=repo.quota_complete_sequence] unless entity @s[tag=repo.quota_interrupted] if score @s repo.temp2 matches 0..29 as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/faces/extraction_zone_0"]

execute unless entity @s[tag=repo.quota_complete_sequence] unless entity @s[tag=repo.quota_interrupted] if score @s repo.temp2 matches 30..79 as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/faces/extraction_zone_2"]

execute unless entity @s[tag=repo.quota_complete_sequence] unless entity @s[tag=repo.quota_interrupted] if score @s repo.temp2 matches 80..99 as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/faces/extraction_zone_1"]

execute if score @s repo.temp2 matches 100.. unless entity @s[tag=repo.quota_complete_sequence] unless entity @s[tag=repo.quota_interrupted] run function repo:extraction/start_completion_sequence

execute store result storage repo:display collected int 1 run scoreboard players get @s repo.collected_value
execute store result storage repo:display quota int 1 run scoreboard players get @s repo.quota
execute store result storage repo:display percentage int 1 run scoreboard players get @s repo.temp2

function repo:extraction/set_display_name with storage repo:display