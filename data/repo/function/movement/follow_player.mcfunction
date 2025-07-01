execute store result score @s repo.current_tick run time query gametime
execute if score @s repo.last_tick = @s repo.current_tick run return 0
scoreboard players operation @s repo.last_tick = @s repo.current_tick

tag @s add repo.current_object

execute if score @s repo.holder_count matches 2.. run function repo:movement/calculate_multi_holder_position

execute if score @s repo.holder_count matches 1 run function repo:movement/legacy_single_holder_with_offset

execute unless score @s repo.holder_count matches 1.. run function repo:movement/legacy_single_holder

tag @s remove repo.current_object
