
execute unless score @s repo.distance_offset matches -10..10 run scoreboard players set @s repo.distance_offset 0

execute if score @s repo.distance_offset matches -5 anchored eyes positioned ^ ^ ^3.5 run summon marker ~ ~ ~ {Tags:["repo.temp_marker"]}
execute if score @s repo.distance_offset matches -4..-1 anchored eyes positioned ^ ^ ^3.6 run summon marker ~ ~ ~ {Tags:["repo.temp_marker"]}
execute if score @s repo.distance_offset matches 0 anchored eyes positioned ^ ^ ^4.0 run summon marker ~ ~ ~ {Tags:["repo.temp_marker"]}
execute if score @s repo.distance_offset matches 1..4 anchored eyes positioned ^ ^ ^4.4 run summon marker ~ ~ ~ {Tags:["repo.temp_marker"]}
execute if score @s repo.distance_offset matches 5 anchored eyes positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["repo.temp_marker"]}
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_x run data get entity @s Pos[0] 1000
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_y run data get entity @s Pos[1] 1000
execute as @e[tag=repo.temp_marker,limit=1] store result score @e[tag=repo.current_object,limit=1] repo.target_z run data get entity @s Pos[2] 1000

kill @e[tag=repo.temp_marker]