
tag @s add repo.temp_target
data modify entity @s Glowing set value 1b

execute as @p run function repo:pickup/normal_player_pickup

tag @e remove repo.temp_target