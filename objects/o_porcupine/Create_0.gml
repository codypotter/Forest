event_inherited();


enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}

starting_state_ = porcupine.idle;
state_ = starting_state_;

image_index = 0;
image_xscale = choose(1, -1);

alarm[1] = random_range(0, 1) * global.one_second;