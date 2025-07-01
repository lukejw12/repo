scoreboard players set @s repo.temp3 0

execute if score @s repo.holder = @a[tag=repo.current_player,limit=1] repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_2 = @a[tag=repo.current_player,limit=1] repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_3 = @a[tag=repo.current_player,limit=1] repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_4 = @a[tag=repo.current_player,limit=1] repo.temp2 run scoreboard players set @s repo.temp3 1

execute if score @s repo.temp3 matches 1 as @a[tag=repo.current_player,limit=1] run function repo:movement/add_player_endpoint