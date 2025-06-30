tellraw @a [{"text":"DEBUG: In add_to_center_if_holder_fixed","color":"dark_purple"}]
tellraw @a [{"text":"DEBUG: Object holders: "},{"score":{"name":"@s","objective":"repo.holder"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_2"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_3"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_4"},"color":"white"}]

execute store result score @s repo.current_player_uuid run scoreboard players get @a[tag=repo.current_player,limit=1] repo.temp2
tellraw @a [{"text":"DEBUG: Player UUID to match: "},{"score":{"name":"@s","objective":"repo.current_player_uuid"},"color":"white"}]

scoreboard players set @s repo.temp3 0

execute if score @s repo.holder = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_2 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_3 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1
execute if score @s repo.holder_4 = @s repo.current_player_uuid run scoreboard players set @s repo.temp3 1

tellraw @a [{"text":"DEBUG: Match found: "},{"score":{"name":"@s","objective":"repo.temp3"},"color":"white"}]

execute if score @s repo.temp3 matches 1 as @a[tag=repo.current_player,limit=1] run function repo:movement/add_player_to_center