scoreboard players remove @s repo.completion_timer 1

execute if score @s repo.completion_timer matches 60 run function repo:extraction/show_money_bag

execute if score @s repo.completion_timer matches 40 run function repo:extraction/show_countdown_3
execute if score @s repo.completion_timer matches 20 run function repo:extraction/show_countdown_2
execute if score @s repo.completion_timer matches 1 run function repo:extraction/show_countdown_1

execute if score @s repo.completion_timer matches -19 run function repo:extraction/complete_extraction_sequence