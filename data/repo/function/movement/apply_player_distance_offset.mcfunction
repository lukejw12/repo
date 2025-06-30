execute unless score @s repo.distance_offset matches -40..15 run scoreboard players set @s repo.distance_offset 0

execute store result storage repo:temp distance_offset int 1 run scoreboard players get @s repo.distance_offset
scoreboard players set @s repo.temp3 40
scoreboard players operation @s repo.temp3 += @s repo.distance_offset

execute store result storage repo:temp final_distance float 0.1 run scoreboard players get @s repo.temp3

execute as @p anchored eyes run function repo:movement/calculate_offset_direction with storage repo:temp