instance_destroy();
audio_play_sound(a_collect_item, 2, false);
global.player_health = min(global.player_health + 1, global.player_max_health);
