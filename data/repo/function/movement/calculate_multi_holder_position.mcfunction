tellraw @a [{"text":"DEBUG: ===== MULTI HOLDER POSITIONING =====","color":"gold"}]
tellraw @a [{"text":"DEBUG: Object entity: "},{"selector":"@s"}]
tellraw @a [{"text":"DEBUG: Holder count: "},{"score":{"name":"@s","objective":"repo.holder_count"},"color":"white"}]

scoreboard players set @s repo.center_x 0
scoreboard players set @s repo.center_y 0
scoreboard players set @s repo.center_z 0
scoreboard players set @s repo.temp 0

tellraw @a [{"text":"DEBUG: About to check players...","color":"yellow"}]
execute as @a run tellraw @a [{"text":"DEBUG: Checking player: "},{"selector":"@s"}]
execute as @a at @s run function repo:movement/check_if_multi_holder

function repo:movement/finalize_center_position
tellraw @a [{"text":"DEBUG: ===== END MULTI HOLDER POSITIONING =====","color":"gold"}]