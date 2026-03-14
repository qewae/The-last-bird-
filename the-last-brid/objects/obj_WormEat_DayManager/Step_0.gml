if global.WormEaten = global.WormSpawn
{
	global.WormEaten = 0
	global.WormSpawn = global.WormMax
	room_goto(Forest)
	global.start = false
	obj_MainBird.sprite_index = spr_MainBird_stand
	global.time += 1
}

if global.time >= 6
{
	global.DEnd = true
	
}
global.WormSpawnVar = global.WormMax - 1
DayWormCount(2,4)
DayWormCount(3,3)
DayWormCount(4,2)
DayWormCount(5,1)
DayWormCount(6,irandom_range(0,1))

