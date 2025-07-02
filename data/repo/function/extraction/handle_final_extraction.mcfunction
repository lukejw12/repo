scoreboard players remove @s repo.final_extraction_timer 1

execute if score @s repo.final_extraction_timer matches 0 run function repo:extraction/complete_final_extraction