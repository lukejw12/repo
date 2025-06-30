
execute store result score @s repo.temp run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @a if score @s repo.temp2 = @e[tag=repo.object,limit=1,sort=nearest] repo.holder run function repo:input/drop_broken_object
function repo:damage/show_break_display

kill @s