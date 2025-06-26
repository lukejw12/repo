
execute unless score @s repo.distance_offset matches -10..10 run scoreboard players set @s repo.distance_offset 0
scoreboard players add @s repo.distance_offset 5
execute if score @s repo.distance_offset matches 6.. run scoreboard players set @s repo.distance_offset 5

tellraw @s [{"text":"[R.E.P.O.] ","color":"gold"},{"text":"Pushed object away","color":"yellow"}]