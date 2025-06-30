$execute anchored eyes positioned ^ ^ ^$(distance) run summon marker ~ ~-0.2 ~ {Tags:["repo.temp_marker"]}
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_x run data get entity @s Pos[0] 1000
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_y run data get entity @s Pos[1] 1000
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_z run data get entity @s Pos[2] 1000


kill @e[tag=repo.temp_marker]