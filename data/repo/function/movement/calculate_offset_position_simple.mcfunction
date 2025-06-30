execute as @e[tag=repo.current_object] unless score @s repo.distance_offset matches -40..15 run scoreboard players set @s repo.distance_offset 0

execute as @e[tag=repo.current_object] run scoreboard players set @s repo.temp 40
execute as @e[tag=repo.current_object] run scoreboard players operation @s repo.temp += @s repo.distance_offset
execute as @e[tag=repo.current_object] store result storage repo:temp distance float 0.1 run scoreboard players get @s repo.temp

function repo:movement/position_marker with storage repo:temp