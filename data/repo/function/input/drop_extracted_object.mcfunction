
tag @s remove repo.holding

execute as @e[tag=repo.click_detector] if score @s repo.holder = @p repo.temp3 run kill @s

tellraw @s [{"text":"[R.E.P.O.] ","color":"gold"},{"text":"Your item was extracted!","color":"green"}]