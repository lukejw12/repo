
tellraw @s [{"text":"[DEBUG] Advancement triggered - player hit detector","color":"green"}]
advancement revoke @s only repo:click_detected
execute if entity @s[tag=repo.holding] run function repo:input/player_left_clicked