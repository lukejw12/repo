execute unless block ~ ~ ~ #repo:passable run function repo:movement/set_raycast_endpoint
execute unless block ~ ~ ~ #repo:passable run return 0

scoreboard players add @s repo.raycast_steps 1
execute if score @s repo.raycast_steps matches ..40 positioned ^ ^ ^0.2 run function repo:movement/find_raycast_endpoint

execute if score @s repo.raycast_steps matches 40.. positioned ^ ^ ^4 run function repo:movement/set_raycast_endpoint