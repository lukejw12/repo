scoreboard players set @s repo.raycast_steps 0
execute anchored eyes run function repo:movement/find_raycast_endpoint

execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_x += @s repo.endpoint_x
execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_y += @s repo.endpoint_y
execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_z += @s repo.endpoint_z

execute as @e[tag=repo.current_object,limit=1] run scoreboard players add @s repo.temp 1