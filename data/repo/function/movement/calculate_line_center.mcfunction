
execute store result score @s repo.player1_start_x run scoreboard players get @s repo.p1_pos_x
execute store result score @s repo.player1_start_y run scoreboard players get @s repo.p1_pos_y
execute store result score @s repo.player1_start_z run scoreboard players get @s repo.p1_pos_z

execute store result score @s repo.player1_end_x run scoreboard players get @s repo.p1_endpoint_x
execute store result score @s repo.player1_end_y run scoreboard players get @s repo.p1_endpoint_y
execute store result score @s repo.player1_end_z run scoreboard players get @s repo.p1_endpoint_z

execute store result score @s repo.player2_start_x run scoreboard players get @s repo.p2_pos_x
execute store result score @s repo.player2_start_y run scoreboard players get @s repo.p2_pos_y
execute store result score @s repo.player2_start_z run scoreboard players get @s repo.p2_pos_z

execute store result score @s repo.player2_end_x run scoreboard players get @s repo.p2_endpoint_x
execute store result score @s repo.player2_end_y run scoreboard players get @s repo.p2_endpoint_y
execute store result score @s repo.player2_end_z run scoreboard players get @s repo.p2_endpoint_z

scoreboard players operation @s repo.center_x = @s repo.player1_start_x
scoreboard players operation @s repo.center_x += @s repo.player2_start_x
scoreboard players operation @s repo.center_x /= #2 repo.temp

scoreboard players operation @s repo.center_y = @s repo.player1_start_y
scoreboard players operation @s repo.center_y += @s repo.player2_start_y
scoreboard players operation @s repo.center_y /= #2 repo.temp

scoreboard players operation @s repo.center_z = @s repo.player1_start_z
scoreboard players operation @s repo.center_z += @s repo.player2_start_z
scoreboard players operation @s repo.center_z /= #2 repo.temp

