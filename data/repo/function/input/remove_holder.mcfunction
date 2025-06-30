execute store result score @s repo.temp run data get entity @p UUID[0]
execute as @e[tag=repo.held_by] if score @s repo.holder = @p repo.temp run function repo:input/remove_from_holder_list
execute as @e[tag=repo.held_by] if score @s repo.holder_2 = @p repo.temp run function repo:input/remove_from_holder_list_2
execute as @e[tag=repo.held_by] if score @s repo.holder_3 = @p repo.temp run function repo:input/remove_from_holder_list_3
execute as @e[tag=repo.held_by] if score @s repo.holder_4 = @p repo.temp run function repo:input/remove_from_holder_list_4