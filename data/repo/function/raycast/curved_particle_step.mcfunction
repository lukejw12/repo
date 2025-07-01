execute store result score @s repo.step_distance run scoreboard players get @s repo.raycast_steps
scoreboard players operation @s repo.step_distance *= #10 repo.temp

execute if score @s repo.raycast_steps matches ..10 run function repo:raycast/draw_straight_segment
execute if score @s repo.raycast_steps matches 11.. run function repo:raycast/draw_curve_segment

scoreboard players add @s repo.raycast_steps 1
execute if score @s repo.raycast_steps matches ..40 run function repo:raycast/curved_particle_step