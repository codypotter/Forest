/// @description Attack State
image_speed = 0.5;

if animation_hit_frame(2) {
	var _damage = 1;
	var _knockback = 4;
	var _life = 1;
	create_hitbox(s_porcupine_hitbox, x, y-8, 0, _life, [o_player], _damage, _knockback);
	audio_play_sound(a_porcupine_attack, 6, false);
}

if animation_hit_frame(image_number - 1) {
	state_ = porcupine.idle;
	sprite_index = s_porcupine_run;
	alarm[1] = 2 * global.one_second;
}