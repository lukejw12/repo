
execute if score @s repo.selected_slot matches 0 if score @s repo.prev_slot matches 8 run function repo:input/scrolled_forward
execute if score @s repo.selected_slot matches 0 if score @s repo.prev_slot matches 8 run return 0

execute if score @s repo.selected_slot matches 8 if score @s repo.prev_slot matches 0 run function repo:input/scrolled_backward
execute if score @s repo.selected_slot matches 8 if score @s repo.prev_slot matches 0 run return 0

execute if score @s repo.selected_slot > @s repo.prev_slot run function repo:input/scrolled_forward

execute if score @s repo.selected_slot < @s repo.prev_slot run function repo:input/scrolled_backward