
tellraw @a[distance=..20] [{"text":"[R.E.P.O.] ","color":"gold","bold":true},{"text":"Quota met! Extracting all items...","color":"green"}]

execute as @e[tag=repo.object,distance=..2.1] run function repo:extraction/extract_single_item
scoreboard players operation @s repo.collected_value = @s repo.temp

function repo:extraction/quota_complete