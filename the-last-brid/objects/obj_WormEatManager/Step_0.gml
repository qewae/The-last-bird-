if global.WormEaten = global.WormMax
{
	global.WormEaten = 0
	room_goto(Room1)
	obj_MainBird.xspd = 0
	obj_MainBird.yspd = 0
	obj_MainBird.x = global.X
	obj_MainBird.y = global.Y
	obj_MainBird.sprite_index = spr_MainBird_stand
}