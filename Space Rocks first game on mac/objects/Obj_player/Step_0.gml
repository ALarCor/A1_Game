/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up) {
	motion_add(image_angle,0.1);
}

if keyboard_check(vk_left) {
	image_angle +=4;
}

if keyboard_check(vk_right) {
	image_angle -=4;	
}

if keyboard_check(vk_down){
	motion_add(image_angle,-0.1)
}

// this key will stop the player from moving
if keyboard_check(vk_rshift){
	speed=0;
}

/* this will allow for the room to loop and 
the player to never be able to leave it */
move_wrap(true, true, 0);

if keyboard_check_pressed(ord("F")){
	instance_create_layer(x, y, "Instances", Obj_bullet)
	audio_play_sound(snd_shoot,0,false, 1,0, random_range(0.8,1.2));
}

if keyboard_check_pressed(ord("R")){
	room_restart();
}
if keyboard_check_pressed(vk_escape){
	game_end();
}