tellraw @p [{"text":"DEBUG: Checking object holders: "},{"score":{"name":"@s","objective":"repo.holder"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_2"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_3"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_4"},"color":"white"}]
tellraw @p [{"text":"DEBUG: Player UUID to match: "},{"score":{"name":"@p","objective":"repo.temp2"},"color":"white"}]

scoreboard players set @s repo.temp3 0

execute if score @s repo.holder = @p repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_2 = @p repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_3 = @p repo.temp2 run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_4 = @p repo.temp2 run scoreboard players set @s repo.temp3 1

tellraw @p [{"text":"DEBUG: Match found: "},{"score":{"name":"@s","objective":"repo.temp3"},"color":"white"}]

execute if score @s repo.temp3 matches 1 run function repo:movement/add_player_to_center