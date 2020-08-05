/// @desc Destroy the ship
with (oGame){
	alarm[1] = room_speed;
}

lives -= 1;
audio_play_sound(snd_die, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",oDebris);
}