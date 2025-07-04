#base object spawning and damging
scoreboard objectives add repo.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add repo.timer dummy
scoreboard objectives add repo.strength dummy
scoreboard objectives add repo.holding dummy
scoreboard objectives add repo.raycast_steps dummy
scoreboard objectives add repo.raycast_success dummy
scoreboard objectives add repo.holder dummy
scoreboard objectives add repo.weight dummy
scoreboard objectives add repo.fragile_percentage dummy
scoreboard objectives add repo.base_value dummy
scoreboard objectives add repo.current_value dummy
scoreboard objectives add repo.fall_distance dummy
scoreboard objectives add repo.damage_timer dummy
scoreboard objectives add repo.motion_x dummy
scoreboard objectives add repo.motion_y dummy
scoreboard objectives add repo.motion_z dummy
scoreboard objectives add repo.pos_x dummy
scoreboard objectives add repo.pos_y dummy
scoreboard objectives add repo.pos_z dummy
scoreboard objectives add repo.target_x dummy
scoreboard objectives add repo.target_y dummy
scoreboard objectives add repo.target_z dummy
scoreboard objectives add repo.speed_multiplier dummy
scoreboard objectives add repo.was_on_ground dummy
scoreboard objectives add repo.hit_wall dummy
scoreboard objectives add repo.damage_cooldown dummy
scoreboard objectives add repo.coas_total dummy
scoreboard objectives add repo.prev_coas dummy
scoreboard objectives add repo.coas_check_timer dummy
scoreboard objectives add repo.look_check_timer dummy
scoreboard objectives add repo.temp dummy
scoreboard objectives add repo.temp2 dummy
scoreboard objectives add repo.temp3 dummy
scoreboard objectives add repo.temp4 dummy
scoreboard objectives add repo.temp5 dummy
scoreboard objectives add repo.temp6 dummy
scoreboard objectives add repo.attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add repo.distance_offset dummy
scoreboard objectives add repo.selected_slot dummy
scoreboard objectives add repo.prev_slot dummy
scoreboard objectives add repo.quota dummy
scoreboard objectives add repo.collected_value dummy

# more multiplayer jank
scoreboard objectives add repo.holder_2 dummy
scoreboard objectives add repo.holder_3 dummy
scoreboard objectives add repo.holder_4 dummy
scoreboard objectives add repo.holder_count dummy
scoreboard objectives add repo.combined_strength dummy
scoreboard objectives add repo.center_x dummy
scoreboard objectives add repo.center_y dummy
scoreboard objectives add repo.center_z dummy
scoreboard objectives add repo.is_holding_this dummy
scoreboard objectives add repo.is_holder dummy
scoreboard objectives add repo.player_strength dummy
scoreboard objectives add repo.movement_cooldown dummy
scoreboard objectives add repo.last_tick dummy
scoreboard objectives add repo.current_tick dummy

#constants
scoreboard players set #60 repo.temp 60
scoreboard players set #10000 repo.temp 10000
scoreboard players set #3 repo.temp 3
scoreboard players set #5 repo.temp 5
scoreboard players set @a repo.strength 15
scoreboard players set #100 repo.temp 100
scoreboard players set #1000 repo.temp 1000

# multiplayer handling
scoreboard objectives add repo.current_player_uuid dummy
scoreboard objectives add repo.check_uuid dummy
scoreboard objectives add repo.endpoint_x dummy
scoreboard objectives add repo.endpoint_y dummy
scoreboard objectives add repo.endpoint_z dummy
scoreboard objectives add repo.p1_pos_x dummy
scoreboard objectives add repo.p1_pos_y dummy
scoreboard objectives add repo.p1_pos_z dummy
scoreboard objectives add repo.p1_endpoint_x dummy
scoreboard objectives add repo.p1_endpoint_y dummy
scoreboard objectives add repo.p1_endpoint_z dummy
scoreboard objectives add repo.p2_pos_x dummy
scoreboard objectives add repo.p2_pos_y dummy
scoreboard objectives add repo.p2_pos_z dummy
scoreboard objectives add repo.p2_endpoint_x dummy
scoreboard objectives add repo.p2_endpoint_y dummy
scoreboard objectives add repo.p2_endpoint_z dummy
scoreboard objectives add repo.player2_start_y dummy
scoreboard objectives add repo.player2_start_x dummy
scoreboard objectives add repo.player2_start_z dummy
scoreboard objectives add repo.player1_start_y dummy
scoreboard objectives add repo.player1_start_x dummy
scoreboard objectives add repo.player1_start_z dummy
scoreboard objectives add repo.player2_end_y dummy
scoreboard objectives add repo.player2_end_x dummy
scoreboard objectives add repo.player2_end_z dummy
scoreboard objectives add repo.player1_end_y dummy
scoreboard objectives add repo.player1_end_x dummy
scoreboard objectives add repo.player1_end_z dummy
scoreboard objectives add repo.already_holding dummy

# raycast and item handling
scoreboard objectives add repo.step_progress dummy
scoreboard objectives add repo.progress dummy
scoreboard objectives add repo.current_x dummy
scoreboard objectives add repo.current_y dummy
scoreboard objectives add repo.current_z dummy
scoreboard objectives add repo.object_x dummy
scoreboard objectives add repo.object_y dummy
scoreboard objectives add repo.object_z dummy
scoreboard objectives add repo.diff_x dummy
scoreboard objectives add repo.diff_y dummy
scoreboard objectives add repo.diff_z dummy
scoreboard objectives add repo.curve_x dummy
scoreboard objectives add repo.curve_y dummy
scoreboard objectives add repo.curve_z dummy
scoreboard objectives add repo.offset_x dummy
scoreboard objectives add repo.offset_y dummy
scoreboard objectives add repo.offset_z dummy
scoreboard objectives add repo.curve_factor dummy
scoreboard objectives add repo.player_x dummy
scoreboard objectives add repo.player_y dummy
scoreboard objectives add repo.player_z dummy
scoreboard objectives add repo.item_x dummy
scoreboard objectives add repo.item_y dummy
scoreboard objectives add repo.item_z dummy
scoreboard objectives add repo.lerp_x dummy
scoreboard objectives add repo.lerp_y dummy
scoreboard objectives add repo.lerp_z dummy
scoreboard objectives add repo.temp_x dummy
scoreboard objectives add repo.temp_y dummy
scoreboard objectives add repo.temp_z dummy
scoreboard objectives add repo.reverse_progress dummy
scoreboard objectives add repo.start_x dummy
scoreboard objectives add repo.start_y dummy
scoreboard objectives add repo.start_z dummy
scoreboard objectives add repo.mid_x dummy
scoreboard objectives add repo.mid_y dummy
scoreboard objectives add repo.mid_z dummy
scoreboard objectives add repo.end_x dummy
scoreboard objectives add repo.end_y dummy
scoreboard objectives add repo.end_z dummy
scoreboard objectives add repo.curve_x dummy
scoreboard objectives add repo.curve_y dummy
scoreboard objectives add repo.curve_z dummy
scoreboard objectives add repo.t dummy
scoreboard objectives add repo.t_inv dummy
scoreboard objectives add repo.t_sq dummy
scoreboard objectives add repo.t_inv_sq dummy
scoreboard objectives add repo.t_mix dummy
scoreboard objectives add repo.temp_mid_x dummy
scoreboard objectives add repo.temp_mid_y dummy
scoreboard objectives add repo.temp_mid_z dummy
scoreboard objectives add repo.temp_end_x dummy
scoreboard objectives add repo.temp_end_y dummy
scoreboard objectives add repo.temp_end_z dummy
scoreboard objectives add repo.curve_start_x dummy
scoreboard objectives add repo.curve_start_y dummy
scoreboard objectives add repo.curve_start_z dummy
scoreboard objectives add repo.curve_progress dummy
scoreboard objectives add repo.curve_inv dummy
scoreboard objectives add repo.final_x dummy
scoreboard objectives add repo.final_y dummy
scoreboard objectives add repo.final_z dummy
scoreboard objectives add repo.temp_item_x dummy
scoreboard objectives add repo.temp_item_y dummy
scoreboard objectives add repo.temp_item_z dummy
scoreboard players set #30 repo.temp 30
scoreboard players set #2 repo.temp 2
scoreboard objectives add repo.step_distance dummy
scoreboard objectives add repo.straight_end_x dummy
scoreboard objectives add repo.straight_end_y dummy
scoreboard objectives add repo.straight_end_z dummy
scoreboard objectives add repo.curve_t dummy
scoreboard objectives add repo.curve_t_inv dummy
scoreboard objectives add repo.curve_pos_x dummy
scoreboard objectives add repo.curve_pos_y dummy
scoreboard objectives add repo.curve_pos_z dummy
scoreboard objectives add repo.item_contrib_x dummy
scoreboard objectives add repo.item_contrib_y dummy
scoreboard objectives add repo.item_contrib_z dummy
scoreboard objectives add repo.particle_step dummy
scoreboard objectives add repo.distance_cm dummy
scoreboard objectives add repo.curve_remaining dummy
scoreboard objectives add repo.final_pos_x dummy
scoreboard objectives add repo.final_pos_y dummy
scoreboard objectives add repo.final_pos_z dummy
scoreboard objectives add repo.target_contrib_x dummy
scoreboard objectives add repo.target_contrib_y dummy
scoreboard objectives add repo.target_contrib_z dummy
scoreboard players set #10 repo.temp 10
scoreboard players set #40 repo.temp 40
scoreboard players set #3600 repo.temp 3600
scoreboard objectives add repo.tether_step dummy

# item physics
scoreboard objectives add repo.velocity_x dummy
scoreboard objectives add repo.velocity_z dummy
scoreboard objectives add repo.total_velocity dummy
scoreboard objectives add repo.prev_velocity dummy
scoreboard objectives add repo.velocity_drop dummy
scoreboard players set #-1 repo.temp -1
scoreboard players set #200 repo.temp 200
scoreboard players set #50 repo.temp 50
scoreboard objectives add repo.velocity_y dummy
scoreboard objectives add repo.wall_velocity dummy
scoreboard players set #20 repo.temp 20
scoreboard players set #600 repo.temp 600
scoreboard players set #300 repo.temp 300
scoreboard players set #150 repo.temp 150
scoreboard objectives add repo.near_block dummy
scoreboard objectives add repo.drop_percentage dummy
scoreboard objectives add repo.wall_found dummy
scoreboard objectives add repo.prev_velocity_y dummy
scoreboard objectives add repo.velocity_drop_y dummy
scoreboard objectives add repo.floor_found dummy
scoreboard objectives add repo.debug_x dummy
scoreboard objectives add repo.debug_y dummy
scoreboard objectives add repo.debug_z dummy
scoreboard objectives add repo.near_ground dummy
scoreboard objectives add repo.near_wall dummy

# extraction zone
scoreboard objectives add repo.surplus_timer dummy
scoreboard objectives add repo.temp_interaction_id dummy
scoreboard objectives add repo.direction dummy
scoreboard objectives add repo.extraction_id dummy
scoreboard players set #100000 repo.temp 100000
scoreboard objectives add repo.activation_timer dummy
scoreboard objectives add repo.final_extraction_timer dummy
scoreboard objectives add repo.interruption_timer dummy
scoreboard objectives add repo.completion_timer dummy

# stamina
scoreboard objectives add repo.is_actually_sprinting dummy
scoreboard objectives add repo.is_moving dummy
scoreboard objectives add repo.temp_x dummy
scoreboard objectives add repo.temp_z dummy
scoreboard objectives add repo.stamina dummy
scoreboard objectives add repo.is_sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add repo.stamina_regen_timer dummy
scoreboard objectives add repo.stamina_drain_timer dummy
scoreboard objectives add repo.prev_x dummy
scoreboard objectives add repo.prev_z dummy
scoreboard players set @a repo.stamina 100
tellraw @a [{"text":"[R.E.P.O.] ","color":"gold","bold":true},{"text":"Multi-player datapack loaded! Put carrot on stick in OFFHAND and right-click to grab objects. Multiple players can now hold the same item!","color":"white","bold":false}]
gamerule naturalRegeneration false