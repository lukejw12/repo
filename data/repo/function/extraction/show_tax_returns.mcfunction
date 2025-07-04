execute as @e[tag=repo.value_display] if score @s repo.extraction_id = @s repo.extraction_id run data modify entity @s CustomName set value {text:"Tax Return",color:"green"}

scoreboard players set @s repo.surplus_timer 30