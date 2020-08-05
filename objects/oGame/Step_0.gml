/// @desc Mostly the start game logix
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rStart:
			room_goto(rGame);
			break
		
		case rWin:
		case rGameOver:
			game_restart();
			break;
	}
}

if (room == rGame){
	if (score >= 1000){
		room_goto(rWin);	
		audio_play_sound(snd_win, 1, false)
	}

	if(lives <= 0){
		room_goto(rGameOver);	
		audio_play_sound(snd_lose, 1, false)
	}
}