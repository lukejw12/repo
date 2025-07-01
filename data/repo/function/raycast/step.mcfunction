execute unless block ~ ~ ~ #repo:passable run return 0

execute as @e[tag=repo.object,distance=..1,sort=nearest] run function repo:pickup/attempt_pickup_normal

execute if entity @s[tag=repo.holding] anchored eyes positioned ^ ^ ^1 facing entity @e[tag=repo.held_by,limit=1,sort=nearest] feet run function repo:particles/draw_simple_tether
execute unless entity @s[tag=repo.holding] run particle minecraft:wax_on ^ ^ ^2 0 0 0 0 0

scoreboard players add @s repo.raycast_steps 1

execute if score @s repo.raycast_success matches 0 if score @s repo.raycast_steps matches ..80 unless entity @s[tag=repo.holding] positioned ^ ^ ^0.1 run function repo:raycast/step