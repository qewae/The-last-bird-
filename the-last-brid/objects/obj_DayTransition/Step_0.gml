
if global.transition == true
{
	alpha += 0.005
}
if alpha == 1
{
	global.transition = false
	CloseTrans = true
}
if CloseTrans == true
{
	if alpha == 0 and CloseTrans == true
	{
		room_goto(Room1)
	}
	else
	{
	alpha -= 0.005
	}
		
}

draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)
