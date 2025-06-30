scoreboard players set @s repo.temp2 0

execute if score @s repo.holder = @p repo.temp run scoreboard players set @s repo.temp2 1
execute if score @s repo.holder_2 = @p repo.temp run scoreboard players set @s repo.temp2 2
execute if score @s repo.holder_3 = @p repo.temp run scoreboard players set @s repo.temp2 3
execute if score @s repo.holder_4 = @p repo.temp run scoreboard players set @s repo.temp2 4

execute if score @s repo.temp2 matches 1 run function repo:input/remove_from_holder_list
execute if score @s repo.temp2 matches 2 run function repo:input/remove_from_holder_list_2
execute if score @s repo.temp2 matches 3 run function repo:input/remove_from_holder_list_3
execute if score @s repo.temp2 matches 4 run function repo:input/remove_from_holder_list_4