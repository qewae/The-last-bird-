//虫子计算
if global.WormEaten = global.WormSpawn
{
	global.WormEaten = 0
	global.WormSpawn = global.WormMax
	room_goto(Forest)
	global.start = false
	obj_MainBird.sprite_index = spr_MainBird_stand
	global.time += 1
}
//一天时间
if global.time >= 6
{
	global.DEnd = true
	
}
DayWormCount(2,4)
DayWormCount(3,4)
DayWormCount(4,3)
DayWormCount(5,2)
DayWormCount(6,1)
global.WormSpawnVar = global.WormMax - 1


//饥饿条判定
if global.Hunger > global.Max_Hunger
{
	global.Hunger = global.Max_Hunger
}
if global.Hunger < 1
{
	global.Hunger = 1
	room_goto(GameEnd_Starve)
	
}
