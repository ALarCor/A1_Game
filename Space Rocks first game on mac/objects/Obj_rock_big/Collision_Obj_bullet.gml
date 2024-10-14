audio_play_sound(snd_rockhit,0,false,1,0,random_range(0.6,1.1));

// this will keep the score
Obj_game.points += 25;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
direction = random(360);

if sprite_index = spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if instance_number(Obj_rock_big) <12 {
	sprite_index = spr_rock_big;
	x = -100;
}
else {
	instance_destroy();
}