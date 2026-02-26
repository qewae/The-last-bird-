if global.WormEaten = global.WormMax
{
	global.WormEaten = 0
	room_goto(Room1)
	global.start = false
	obj_MainBird.sprite_index = spr_MainBird_stand
}