
tellraw @p [{"text":"=== DETAILED REPO DEBUG ===","color":"gold"}]
execute as @p run tellraw @s [{"text":"Player Timer: "},{"score":{"name":"@s","objective":"repo.timer"},"color":"green"}]
execute as @p run tellraw @s [{"text":"Player Strength: "},{"score":{"name":"@s","objective":"repo.strength"},"color":"green"}]
execute as @p if entity @s[tag=repo.holding] run tellraw @s [{"text":"Player Status: HOLDING","color":"green"}]
execute as @p unless entity @s[tag=repo.holding] run tellraw @s [{"text":"Player Status: NOT HOLDING","color":"yellow"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"--- NEAREST OBJECT ---","color":"aqua"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"Weight: "},{"score":{"name":"@s","objective":"repo.weight"},"color":"white"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"Base Value: "},{"score":{"name":"@s","objective":"repo.base_value"},"color":"white"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"Current Value: "},{"score":{"name":"@s","objective":"repo.current_value"},"color":"white"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"Holder: "},{"score":{"name":"@s","objective":"repo.holder"},"color":"white"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run tellraw @p [{"text":"Was On Ground: "},{"score":{"name":"@s","objective":"repo.was_on_ground"},"color":"white"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] if entity @s[tag=repo.held_by] run tellraw @p [{"text":"Object Status: BEING HELD","color":"green"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] unless entity @s[tag=repo.held_by] run tellraw @p [{"text":"Object Status: FREE","color":"yellow"}]
execute as @e[tag=repo.object,limit=1,sort=nearest] run data get entity @s fall_distance
execute as @e[tag=repo.object,limit=1,sort=nearest] run data get entity @s OnGround
execute if predicate repo:holding_carrot_on_stick run tellraw @s [{"text":"✅ Predicate TRUE - holding carrot on stick","color":"green"}]
execute unless predicate repo:holding_carrot_on_stick run tellraw @s [{"text":"❌ Predicate FALSE - not holding carrot on stick","color":"red"}]

tellraw @s [{"text":"Current item in mainhand:","color":"yellow"}]
data get entity @s SelectedItem




say space

scoreboard players set @s repo.coas 0
tellraw @s [{"text":"Reset COAS to 0","color":"yellow"}]
tellraw @s [{"text":"Now try right-clicking and check if COAS increases","color":"yellow"}]

schedule function repo:debug/check_coas_after 1t