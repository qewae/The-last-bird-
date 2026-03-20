//吃虫子
if collision_rectangle(x,y,x+512,y+512,obj_cursor,false,false) and mouse_check_button(mb_left)
{
	if global.WormCount > 0 and CD == false {
	global.WormCount -= 1
	global.BBird1 += 1
	CD = true
	alarm_set(0,10)
	}
}