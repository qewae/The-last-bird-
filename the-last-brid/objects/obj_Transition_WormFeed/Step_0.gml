


if global.transition_Feed == true
{
	
	alpha += 0.01
}
if alpha == 1
{
	alpha = 0
	global.transition_Feed = false
	room_goto(target_room)
	
}
draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)
	
//Closing(condition, target_room, sprite, alpha)
