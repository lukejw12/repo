tag @s remove repo.quota_complete_sequence
scoreboard players set @s repo.interruption_timer 60

execute as @e[tag=repo.extraction_display,distance=..3] run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/icons/extraction_zone_2"]

playsound minecraft:entity.villager.no master @a[distance=..20] ~ ~ ~ 1 0.8
function repo:extraction/show_quota_interrupted
tag @s add repo.quota_interrupted
