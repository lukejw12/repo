
scoreboard players set @s repo.temp 0

execute as @e[tag=repo.object,distance=..2.1] run scoreboard players operation @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.temp += @s repo.current_value

execute if score @s repo.temp >= @s repo.quota run function repo:extraction/extract_all_items

scoreboard players operation @s repo.collected_value = @s repo.temp
function repo:extraction/update_zone_display