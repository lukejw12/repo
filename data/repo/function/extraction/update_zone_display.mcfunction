scoreboard players set @s repo.temp2 0

execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 = @s repo.collected_value
execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 *= #100 repo.temp
execute if score @s repo.quota matches 1.. if score @s repo.collected_value matches 1.. run scoreboard players operation @s repo.temp2 /= @s repo.quota

execute store result storage repo:display collected int 1 run scoreboard players get @s repo.collected_value
execute store result storage repo:display quota int 1 run scoreboard players get @s repo.quota
execute store result storage repo:display percentage int 1 run scoreboard players get @s repo.temp2

function repo:extraction/set_display_name with storage repo:display