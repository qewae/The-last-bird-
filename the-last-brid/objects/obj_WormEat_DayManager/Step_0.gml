if global.WormEaten = global.WormSpawn
{
	global.WormEaten = 0
	global.WormMax = 4
	room_goto(Forest)
	global.start = false
	obj_MainBird.sprite_index = spr_MainBird_stand
	global.time += 1
}

if global.time >= 6
{
	global.DEnd = true
	
}
