/// @description Move State
image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);
var _attack_input = o_input.action_one_pressed_;
var _roll_input = o_input.action_two_pressed_;
roll_direction_ = direction_facing_ * 90;

if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	image_xscale = _x_input < 0 ? -1 : 1;
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_ * 90;
}

inventory_use_item(o_input.action_one_pressed_, global.item[0]);
inventory_use_item(o_input.action_two_pressed_, global.item[1]);

move_movement_entity(true);
