execute unless score @s repo.distance_offset matches -40..15 run scoreboard players set @s repo.distance_offset 0

scoreboard players set @s repo.temp 40
scoreboard players operation @s repo.temp += @s repo.distance_offset
execute store result storage repo:temp distance float 0.1 run scoreboard players get @s repo.temp

function repo:movement/position_marker with storage repo:temp