
scoreboard players operation @s repo.motion_x = @s repo.target_x
scoreboard players operation @s repo.motion_x -= @s repo.pos_x

scoreboard players operation @s repo.motion_y = @s repo.target_y
scoreboard players operation @s repo.motion_y -= @s repo.pos_y

scoreboard players operation @s repo.motion_z = @s repo.target_z
scoreboard players operation @s repo.motion_z -= @s repo.pos_z
scoreboard players operation @s repo.motion_x *= @s repo.speed_multiplier
scoreboard players operation @s repo.motion_y *= @s repo.speed_multiplier
scoreboard players operation @s repo.motion_z *= @s repo.speed_multiplier

scoreboard players operation @s repo.motion_x /= #1000 repo.temp
scoreboard players operation @s repo.motion_y /= #1000 repo.temp
scoreboard players operation @s repo.motion_z /= #1000 repo.temp

function repo:movement/apply_motion