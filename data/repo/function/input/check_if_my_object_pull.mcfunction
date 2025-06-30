tellraw @p [{"text":"DEBUG: Checking pull - Object holders: "},{"score":{"name":"@s","objective":"repo.holder"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_2"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_3"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.holder_4"},"color":"white"}]

execute if score @s repo.holder = @p repo.temp run tellraw @p [{"text":"DEBUG: Match on holder 1, applying pull","color":"green"}]
execute if score @s repo.holder = @p repo.temp run function repo:input/apply_pull_to_object

execute if score @s repo.holder_2 = @p repo.temp run tellraw @p [{"text":"DEBUG: Match on holder 2, applying pull","color":"green"}]
execute if score @s repo.holder_2 = @p repo.temp run function repo:input/apply_pull_to_object

execute if score @s repo.holder_3 = @p repo.temp run tellraw @p [{"text":"DEBUG: Match on holder 3, applying pull","color":"green"}]
execute if score @s repo.holder_3 = @p repo.temp run function repo:input/apply_pull_to_object

execute if score @s repo.holder_4 = @p repo.temp run tellraw @p [{"text":"DEBUG: Match on holder 4, applying pull","color":"green"}]
execute if score @s repo.holder_4 = @p repo.temp run function repo:input/apply_pull_to_object