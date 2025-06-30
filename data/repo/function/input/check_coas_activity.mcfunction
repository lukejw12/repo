execute if score @s repo.coas <= @s repo.prev_coas run function repo:input/no_coas_activity
execute if score @s repo.coas > @s repo.prev_coas run function repo:input/coas_activity_detected
scoreboard players operation @s repo.prev_coas = @s repo.coas