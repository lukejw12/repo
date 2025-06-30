
execute as @e[tag=repo.held_by,distance=..1.5] run function repo:input/check_if_our_object
scoreboard players add @s repo.raycast_steps 1
execute if score @s repo.raycast_success matches 0 if score @s repo.raycast_steps matches ..80 positioned ^ ^ ^0.1 run function repo:input/look_check_raycast
execute if score @s repo.raycast_success matches 0 if score @s repo.raycast_steps matches 80.. run function repo:input/not_looking_at_object