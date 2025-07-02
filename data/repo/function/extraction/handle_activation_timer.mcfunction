scoreboard players remove @s repo.activation_timer 1

execute if score @s repo.activation_timer matches 0 run function repo:extraction/activate_new_zone_immediate