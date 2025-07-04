
scoreboard players operation @s repo.temp = @s repo.collected_value
scoreboard players operation @s repo.temp -= @s repo.quota
execute store result storage repo:temp surplus_amount int 1 run scoreboard players get @s repo.temp
execute store result storage repo:temp extraction_id int 1 run scoreboard players get @s repo.extraction_id
function repo:extraction/set_surplus_display_text_with_dollar with storage repo:temp

scoreboard players set @s repo.surplus_timer -1