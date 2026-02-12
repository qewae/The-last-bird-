if global.WormEaten = global.WormMax
{
	global.WormEaten = 0
	room_goto(Room1)
	obj_MainBird.x = global.X
	obj_MainBird.y = global.Y
}