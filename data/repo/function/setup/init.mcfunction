
scoreboard objectives add repo.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add repo.timer dummy
scoreboard objectives add repo.strength dummy
scoreboard objectives add repo.holding dummy
scoreboard objectives add repo.raycast_steps dummy
scoreboard objectives add repo.raycast_success dummy
scoreboard objectives add repo.holder dummy
scoreboard objectives add repo.weight dummy
scoreboard objectives add repo.fragile_percentage dummy
scoreboard objectives add repo.base_value dummy
scoreboard objectives add repo.current_value dummy
scoreboard objectives add repo.fall_distance dummy
scoreboard objectives add repo.damage_timer dummy
scoreboard objectives add repo.motion_x dummy
scoreboard objectives add repo.motion_y dummy
scoreboard objectives add repo.motion_z dummy
scoreboard objectives add repo.pos_x dummy
scoreboard objectives add repo.pos_y dummy
scoreboard objectives add repo.pos_z dummy
scoreboard objectives add repo.target_x dummy
scoreboard objectives add repo.target_y dummy
scoreboard objectives add repo.target_z dummy
scoreboard objectives add repo.speed_multiplier dummy
scoreboard objectives add repo.was_on_ground dummy
scoreboard objectives add repo.hit_wall dummy
scoreboard objectives add repo.damage_cooldown dummy

scoreboard objectives add repo.coas_total dummy
scoreboard objectives add repo.prev_coas dummy
scoreboard objectives add repo.coas_check_timer dummy
scoreboard players set #10000 repo.temp 10000
scoreboard objectives add repo.look_check_timer dummy
scoreboard objectives add repo.temp dummy
scoreboard objectives add repo.temp2 dummy
scoreboard objectives add repo.temp3 dummy
scoreboard players set #3 repo.temp 3
scoreboard players set #5 repo.temp 5
scoreboard players set @a repo.strength 15

scoreboard players set #100 repo.temp 100
scoreboard players set #1000 repo.temp 1000


scoreboard objectives add repo.attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add repo.distance_offset dummy
tellraw @a [{"text":"[R.E.P.O.] ","color":"gold","bold":true},{"text":"Datapack loaded! Use a carrot on a stick to interact with objects.","color":"white","bold":false}]