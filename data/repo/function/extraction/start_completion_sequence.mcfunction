tag @s add repo.quota_complete_sequence
scoreboard players set @s repo.completion_timer 160

execute as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/faces/extraction_zone_3"]

playsound minecraft:entity.player.levelup master @a[distance=..20] ~ ~ ~ 1 1.5