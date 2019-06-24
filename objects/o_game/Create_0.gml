global.one_second = game_get_speed(gamespeed_fps);
instance_create_layer(0, 0, "Instances", o_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcedfghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = i_game_start;


//audio_play_sound(a_music, 10, true);

display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width() / view_wport[0];