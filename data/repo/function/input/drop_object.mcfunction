tag @s remove repo.holding
execute store result score @s repo.temp run data get entity @s UUID[0]
execute as @e[tag=repo.held_by] if score @s repo.holder = @p repo.temp run function repo:input/release_object
