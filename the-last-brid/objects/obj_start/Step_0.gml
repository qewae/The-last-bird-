if collision_rectangle(x - 200,y - 128,x1,y1,obj_cursor,false,false) and start = 0{
	scale = 1.2
	if mouse_check_button(mb_left){
	trans = true
	start = 1
	scale = 0.8
	alarm_set(0,7)

	}
}
else 
{
	if start = 0{
	scale = 1
	}
}
draw_sprite_ext(spr_Start, 0, x, y, scale, scale, 0, c_white, 1)
