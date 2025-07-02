
execute store result score @s repo.temp2 run scoreboard players get @a[tag=repo.current_scroller,limit=1] repo.temp

execute if score @s repo.holder = @s repo.temp2 run function repo:input/apply_pull_to_object
execute if score @s repo.holder_2 = @s repo.temp2 run function repo:input/apply_pull_to_object
execute if score @s repo.holder_3 = @s repo.temp2 run function repo:input/apply_pull_to_object
execute if score @s repo.holder_4 = @s repo.temp2 run function repo:input/apply_pull_to_object