/// @desc ???
draw_self();

//draw guns
if(guns != -1) draw_sprite_ext(spr_ship_powerups_strip6, guns,x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

//draw shield
if(invincible == true) {
	var _alpha = min(1,alarm[1]/60);
	
	draw_sprite_ext(spr_ship_powerups_strip6, power_ups.shield, x,y, image_xscale, image_yscale, image_angle, image_blend, 
	_alpha);
	
}