execute as @e[tag=repo.extraction_display] if score @s repo.extraction_id = @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.extraction_id run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/icons/extraction_zone_0"]
playsound minecraft:entity.experience_orb.pickup master @a[distance=..20] ~ ~ ~ 1 1
function repo:extraction/show_tax_returns