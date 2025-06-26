
#particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1 force @s

execute as @e[tag=repo.object,tag=!repo.held_by,distance=...8,sort=nearest,type=item] run function repo:pickup/attempt_pickup_normal

scoreboard players add @s repo.raycast_steps 1
execute if score @s repo.raycast_success matches 0 if score @s repo.raycast_steps matches ..80 positioned ^ ^ ^0.1 run function repo:raycast/step