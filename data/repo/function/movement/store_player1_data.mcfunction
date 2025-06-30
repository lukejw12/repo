execute store result score @e[tag=repo.current_object,limit=1] repo.p1_pos_x run data get entity @s Pos[0] 1000
execute store result score @e[tag=repo.current_object,limit=1] repo.p1_pos_y run data get entity @s Pos[1] 1000
execute store result score @e[tag=repo.current_object,limit=1] repo.p1_pos_z run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=repo.current_object,limit=1] repo.p1_endpoint_x = @s repo.endpoint_x
scoreboard players operation @e[tag=repo.current_object,limit=1] repo.p1_endpoint_y = @s repo.endpoint_y
scoreboard players operation @e[tag=repo.current_object,limit=1] repo.p1_endpoint_z = @s repo.endpoint_z