tellraw @a [{"text":"DEBUG: ===== FINALIZING CENTER POSITION =====","color":"aqua"}]

scoreboard players operation @s repo.center_x = @s repo.p1_endpoint_x
scoreboard players operation @s repo.center_x += @s repo.p2_endpoint_x
scoreboard players operation @s repo.center_x /= #2 repo.temp

scoreboard players operation @s repo.center_y = @s repo.p1_endpoint_y
scoreboard players operation @s repo.center_y += @s repo.p2_endpoint_y
scoreboard players operation @s repo.center_y /= #2 repo.temp

scoreboard players operation @s repo.center_z = @s repo.p1_endpoint_z
scoreboard players operation @s repo.center_z += @s repo.p2_endpoint_z
scoreboard players operation @s repo.center_z /= #2 repo.temp


scoreboard players operation @s repo.target_x = @s repo.center_x
scoreboard players operation @s repo.target_y = @s repo.center_y
scoreboard players operation @s repo.target_z = @s repo.center_z

function repo:movement/apply_weight_and_motion