$execute anchored eyes positioned ^ ^ ^$(final_distance) run summon marker ~ ~-0.2 ~ {Tags:["repo.offset_marker"]}

execute as @e[tag=repo.offset_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.center_x run data get entity @s Pos[0] 1000
execute as @e[tag=repo.offset_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.center_y run data get entity @s Pos[1] 1000
execute as @e[tag=repo.offset_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.center_z run data get entity @s Pos[2] 1000

kill @e[tag=repo.offset_marker]