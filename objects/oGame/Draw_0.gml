/// @desc Draw Score/Lives
switch(room){
	case rStart:
		draw_set_halign(fa_center);
		var _c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, _c,_c,_c,_c,1);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: Rotate
SPACE: shoot

>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
		
	case rGame:
		draw_text(20,20,"SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		break;

	case rGameOver:
		draw_set_halign(fa_center);
		var _c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			5, 5, 0, _c,_c,_c,_c,1);
			
		draw_text_transformed(
			room_width/2, 250,
			"FINAL SCORE: "+string(score),
			3,3,0);
			
		draw_text_transformed(
			room_width/2, 350,
			"PRESS ENTER TO RESTART",
			3,3,0);
			draw_set_halign(fa_left);
		break;
		
	case rWin:
		draw_set_halign(fa_center);
		var _c = c_lime;
		draw_text_transformed_color(
			room_width/2, 100, "YOU WIN",
			3, 3, 0, _c,_c,_c,_c,1);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART");
			draw_set_halign(fa_left);
		break;
	
}