scoreboard players set @s repo.temp 0

execute as @a run function repo:input/check_holder_distance

execute if score @s repo.temp matches 1 run function repo:input/drop_object_too_far_multi