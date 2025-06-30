execute unless block ~ ~ ~ #repo:passable run return 0

particle minecraft:wax_on ^ ^ ^2 0 0 0 0 0

scoreboard players add @s repo.raycast_steps 1

execute if score @s repo.raycast_steps matches ..80 unless entity @e[tag=repo.object,tag=repo.held_by,distance=..1,sort=nearest] positioned ^ ^ ^0.1 run function repo:raycast/particle_only_step