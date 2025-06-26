
particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1 force @s
execute as @e[tag=repo.object,tag=!repo.held_by,distance=..0.5] run tellraw @p [{"text":"Found object at step "},{"score":{"name":"@p","objective":"repo.raycast_steps"},"color":"green"}]
execute as @e[tag=repo.object,tag=!repo.held_by,distance=..0.5] run function repo:debug/debug_pickup_attempt

scoreboard players add @s repo.raycast_steps 1
execute if score @s repo.raycast_success matches 0 if score @s repo.raycast_steps matches ..50 positioned ^ ^ ^0.1 run function repo:debug/debug_raycast_step

execute if score @s repo.raycast_steps matches 50.. run tellraw @s [{"text":"Raycast completed - no objects found","color":"red"}]