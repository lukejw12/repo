tellraw @p [{"text":"DEBUG: In apply_pull_to_object","color":"green"}]
tellraw @p [{"text":"DEBUG: Current distance_offset: "},{"score":{"name":"@s","objective":"repo.distance_offset"},"color":"white"}]

execute unless score @s repo.distance_offset matches -40..15 run scoreboard players set @s repo.distance_offset 0
execute unless score @s repo.distance_offset matches -40..15 run tellraw @p [{"text":"DEBUG: Reset distance_offset to 0","color":"yellow"}]

scoreboard players set @s repo.temp2 40
scoreboard players operation @s repo.temp2 += @s repo.distance_offset

tellraw @p [{"text":"DEBUG: Calculated temp2: "},{"score":{"name":"@s","objective":"repo.temp2"},"color":"white"}]

execute if score @s repo.temp2 matches ..5 run tellraw @p [{"text":"DEBUG: temp2 too low, returning","color":"red"}]
execute if score @s repo.temp2 matches ..5 run return 0

scoreboard players remove @s repo.distance_offset 5
tellraw @p [{"text":"DEBUG: Reduced distance_offset by 5, now: "},{"score":{"name":"@s","objective":"repo.distance_offset"},"color":"white"}]

execute if score @s repo.distance_offset matches ..-36 run scoreboard players set @s repo.distance_offset -35
execute if score @s repo.distance_offset matches ..-36 run tellraw @p [{"text":"DEBUG: Clamped distance_offset to -35","color":"yellow"}]

tellraw @p [{"text":"DEBUG: Final distance_offset: "},{"score":{"name":"@s","objective":"repo.distance_offset"},"color":"green"}]