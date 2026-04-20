


if global.deathtoom1 == true
{
	alpha += 0.01
}
if alpha = 1 and start = false
{
	start = true
	alarm_set(0,1200);
	
}
draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)

//Closing(condition, target_room, sprite, alpha)
