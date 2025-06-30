execute unless predicate repo:holding_carrot_on_stick run function repo:input/drop_object
execute unless score @s repo.timer matches 3.. run function repo:input/drop_object
execute if score @s repo.timer matches ..2 run function repo:input/drop_object

#function repo:input/check_looking_at_held_object