execute anchored eyes positioned ^ ^ ^1 store result score @s repo.straight_end_x run data get entity @s Pos[0] 1000
execute anchored eyes positioned ^ ^ ^1 store result score @s repo.straight_end_y run data get entity @s Pos[1] 1000
execute anchored eyes positioned ^ ^ ^1 store result score @s repo.straight_end_z run data get entity @s Pos[2] 1000

execute as @e[tag=repo.held_by,limit=1,sort=nearest] run function repo:raycast/calculate_curve_point

function repo:raycast/spawn_curve_particle with storage repo:curve