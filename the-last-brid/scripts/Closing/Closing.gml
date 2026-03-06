function Closing(alpha, targetRoom, sprite){
	
if global.transition == true
{
	alpha += 0.05
}
if alpha == 1
{
	alpha = 0
	room_goto(targetRoom)
	
}
draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)
	
}