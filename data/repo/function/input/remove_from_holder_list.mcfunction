scoreboard players operation @s repo.holder = @s repo.holder_2
scoreboard players operation @s repo.holder_2 = @s repo.holder_3
scoreboard players operation @s repo.holder_3 = @s repo.holder_4
scoreboard players set @s repo.holder_4 -1
scoreboard players remove @s repo.holder_count 1

execute if score @s repo.holder_count matches 0 run function repo:input/release_object