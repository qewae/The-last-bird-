function Closing(condition, targetRoom, sprite, Alpha){
	
if condition == true
{
	Alpha += 0.01
}
if Alpha == 1
{
	Alpha = 0
	room_goto(targetRoom)
}
draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, Alpha)
	
}