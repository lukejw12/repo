scoreboard players set @s repo.temp 0

execute as @e[tag=repo.object,distance=..1.5] run scoreboard players operation @e[tag=repo.extraction_zone,limit=1,sort=nearest] repo.temp += @s repo.current_value

execute if score @s repo.temp < @s repo.quota if entity @s[tag=repo.quota_complete_sequence] run function repo:extraction/handle_quota_interruption

scoreboard players operation @s repo.collected_value = @s repo.temp