execute as @e[tag=repo.current_object] run function repo:movement/setup_object_movement

execute positioned ^ ^ ^4 run function repo:movement/set_target_coords

execute as @e[tag=repo.current_object] run function repo:movement/apply_weight_and_motion