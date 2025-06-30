execute if score @s repo.holder_count matches 2.. run function repo:movement/calculate_multi_holder_position
execute if score @s repo.holder_count matches 1 run function repo:movement/legacy_single_holder_with_offset
execute unless score @s repo.holder_count matches 1.. run function repo:movement/legacy_single_holder

tag @s add repo.current_object
execute as @a run function repo:movement/check_if_holder
tag @s remove repo.current_object