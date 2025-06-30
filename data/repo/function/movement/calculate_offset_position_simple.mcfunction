execute store result score @s repo.temp3 run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp4 run data get entity @s UUID[0]
execute as @a if score @s repo.temp4 = @e[tag=repo.current_object,limit=1] repo.temp3 run scoreboard players operation @e[tag=repo.current_object,limit=1] repo.distance_offset = @s repo.distance_offset

execute as @e[tag=repo.current_object] unless score @s repo.distance_offset matches -30..10 run scoreboard players set @s repo.distance_offset 0

execute as @e[tag=repo.current_object] run scoreboard players set @s repo.temp 40
execute as @e[tag=repo.current_object] run scoreboard players operation @s repo.temp += @s repo.distance_offset

execute as @e[tag=repo.current_object] store result storage repo:temp distance float 0.1 run scoreboard players get @s repo.temp
function repo:movement/position_marker with storage repo:temp
