event_inherited();

// states
enum hornet {
	hit,
	move,
	attack 
}

starting_state_ = hornet.move;
state_ = starting_state_;

// move alarm
alarm[1] = global.one_second * random_range(0, 1);

// attack alarm
alarm[2] = global.one_second * random_range(6, 8);


image_speed = 1;
image_xscale = choose(-1, 1);
range_ = 128;