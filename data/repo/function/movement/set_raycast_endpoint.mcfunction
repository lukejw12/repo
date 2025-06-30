execute store result score @s repo.endpoint_x run data get entity @s Pos[0] 1000
execute store result score @s repo.endpoint_y run data get entity @s Pos[1] 1000
execute store result score @s repo.endpoint_z run data get entity @s Pos[2] 1000

tellraw @a [{"text":"ENDPOINT: "},{"score":{"name":"@s","objective":"repo.endpoint_x"}},{"text":" "},{"score":{"name":"@s","objective":"repo.endpoint_y"}},{"text":" "},{"score":{"name":"@s","objective":"repo.endpoint_z"}}]