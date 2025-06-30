
tag @s add repo.temp_target

execute as @p run function repo:pickup/normal_player_pickup

execute unless entity @p[tag=repo.holding] run tag @s remove repo.held_by
execute unless entity @p[tag=repo.holding] run data modify entity @s Glowing set value 0b

tag @e remove repo.temp_target

