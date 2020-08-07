/// @desc Draw a laser

x = creator.x;
y = creator.y;
direction = creator.image_angle;

var _len = 250;

//Draw Line
draw_line_width_color(x,y,
	x+lengthdir_x(_len, direction),
	y+lengthdir_y(_len,direction),
	5, image_blend,image_blend);
	
//Draw collision
var target = collision_line(x,y,
	x+lengthdir_x(_len, direction),
	y+lengthdir_y(_len,direction),
	oFaction, false, false);
	
if(target != noone){
	if(target.faction != faction){
		with(target){
			event_perform(ev_other,ev_user1);
		}
	}
}