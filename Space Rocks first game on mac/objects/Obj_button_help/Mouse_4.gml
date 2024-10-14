// Inherit the parent event
event_inherited();

if (instance_exists(Obj_controls)){
	instance_destroy(Obj_controls)
}

else {
	instance_create_layer(room_width/2, room_height - 110, "Instances", Obj_controls);
}