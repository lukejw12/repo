
execute anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["repo.temp_endpoint"]}

execute as @e[tag=repo.temp_endpoint,limit=1] store result score @s repo.endpoint_x run data get entity @s Pos[0] 1000
execute as @e[tag=repo.temp_endpoint,limit=1] store result score @s repo.endpoint_y run data get entity @s Pos[1] 1000
execute as @e[tag=repo.temp_endpoint,limit=1] store result score @s repo.endpoint_z run data get entity @s Pos[2] 1000

scoreboard players operation @s repo.endpoint_x = @e[tag=repo.temp_endpoint,limit=1] repo.endpoint_x
scoreboard players operation @s repo.endpoint_y = @e[tag=repo.temp_endpoint,limit=1] repo.endpoint_y
scoreboard players operation @s repo.endpoint_z = @e[tag=repo.temp_endpoint,limit=1] repo.endpoint_z

kill @e[tag=repo.temp_endpoint]


execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_x += @p repo.endpoint_x
execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_y += @p repo.endpoint_y
execute as @e[tag=repo.current_object,limit=1] run scoreboard players operation @s repo.center_z += @p repo.endpoint_z
execute as @e[tag=repo.current_object,limit=1] run scoreboard players add @s repo.temp 1
