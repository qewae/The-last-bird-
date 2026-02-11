//吃虫子
if collision_rectangle(x,y,x+64,y+64,obj_cursor,false,false) and mouse_check_button(mb_left)
{
	global.Hunger += 1
	global.WormEaten += 1
	instance_destroy()
}