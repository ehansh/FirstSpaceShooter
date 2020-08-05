/// @desc Spawn starting rocks
if(room == rGame){
	//if(audio_is_playing(msc_song)){
	//	audio_stop_sound(msc_song);	
	//}
	//audio_play_sound(msc_song, 2, true);
	
	spawn_off_camera(oAsteroid,40)
	spawn_off_camera(oRaider,8);
	spawn_off_camera(oBrute,3);
	spawn_off_camera(oHunter,5);
	
	alarm[0] = 60;
}