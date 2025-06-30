execute as @e[tag=repo.current_object] store result score @s repo.pos_x run data get entity @s Pos[0] 1000
execute as @e[tag=repo.current_object] store result score @s repo.pos_y run data get entity @s Pos[1] 1000
execute as @e[tag=repo.current_object] store result score @s repo.pos_z run data get entity @s Pos[2] 1000

function repo:movement/calculate_offset_position_simple
execute as @e[tag=repo.current_object] run function repo:movement/apply_weight_and_motion