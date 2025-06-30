scoreboard players set @p repo.temp 0

execute if score @s repo.holder = @p repo.temp unless entity @p[distance=..10] run scoreboard players set @p repo.temp 1
execute if score @s repo.holder_2 = @p repo.temp unless entity @p[distance=..10] run scoreboard players set @p repo.temp 1
execute if score @s repo.holder_3 = @p repo.temp unless entity @p[distance=..10] run scoreboard players set @p repo.temp 1
execute if score @s repo.holder_4 = @p repo.temp unless entity @p[distance=..10] run scoreboard players set @p repo.temp 1