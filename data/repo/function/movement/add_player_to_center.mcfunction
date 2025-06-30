scoreboard players set @s repo.raycast_steps 0
execute anchored eyes run function repo:movement/find_raycast_endpoint

execute as @e[tag=repo.current_object,limit=1] if score @s repo.temp matches 0 run function repo:movement/store_as_player1
execute as @e[tag=repo.current_object,limit=1] if score @s repo.temp matches 1 run function repo:movement/store_as_player2

scoreboard players add @e[tag=repo.current_object,limit=1] repo.temp 1