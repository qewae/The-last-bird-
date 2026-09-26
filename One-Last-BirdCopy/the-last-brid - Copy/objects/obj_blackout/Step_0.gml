if obj_start.trans == true
{
	alpha += 0.01
}
if alpha == 1
{
	alpha = 0
	room_goto(target_room)
	
}
draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)
	
//Closing(obj_start.trans, Forest, spr_blackout, alpha)
