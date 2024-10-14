/// @description Insert description here
// You can write your code in this editor
effect_create_above(ef_firework, x, y, 2, c_white);
instance_destroy();


with (Obj_game) {
	alarm[0] = 350;
}

audio_play_sound(snd_lose,0,false);

