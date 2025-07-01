execute store result score @s repo.current_player_uuid run scoreboard players get @a[tag=repo.current_player,limit=1] repo.temp2

scoreboard players set @s repo.temp3 0

execute if score @s repo.holder = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_2 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_3 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_4 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1

execute if score @s repo.temp3 matches 1 as @a[tag=repo.current_player,limit=1] run function repo:movement/add_player_to_center