scoreboard players set @s repo.center_x 0
scoreboard players set @s repo.center_y 0
scoreboard players set @s repo.center_z 0
scoreboard players set @s repo.temp 0

execute as @a at @s run function repo:movement/check_if_multi_holder

function repo:movement/finalize_center_position