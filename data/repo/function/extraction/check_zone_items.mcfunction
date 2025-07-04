function repo:extraction/check_quota_interruption

execute if score @s repo.temp >= @s repo.quota unless entity @s[tag=repo.quota_complete_sequence] unless entity @s[tag=repo.quota_interrupted] run function repo:extraction/start_completion_sequence

function repo:extraction/update_zone_display
function repo:extraction/update_value_display