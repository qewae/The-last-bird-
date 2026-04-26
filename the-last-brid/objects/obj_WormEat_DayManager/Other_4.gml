

if room = WormPicking
{
	if global.day > 1
	{
	 global.WormSpawn = irandom_range(global.WormMax, global.WormSpawnVar)
	}
	else
	{
		 global.WormSpawn = global.WormSpawn
	}
	
	var start = true
	for (var i = 0; i < global.WormSpawn; i ++)
	{
		if global.WormSpawn < 5{
		var spawn_x = random_range(100,270)
		var spawn_y = random_range(100,150)
		var times = i + 1
		instance_create_layer(spawn_x* times, spawn_y* times, "instances", obj_worm)
		}
		else
		{
			var spawn_x = random_range(100,250)
			var spawn_y = random_range(100,150)
			var times = i + 1
			instance_create_layer(spawn_x* times, spawn_y* times, "instances", obj_worm)
		}
	}
}
if global.day == 1 or global.day == 2
{
	global.TreeNum = 6 
}
if global.day > 2
{
	global.TreeNum = 8 - global.day
}

//baby kill
//if room = Forest
//{
//	if global.BBird1 < 0
//	{
//		room_goto(GameEnd_Final)
//	}
//}

//饥饿条判定
if room = Forest
{
	if global.Hunger > global.Max_Hunger
	{
		global.Hunger = global.Max_Hunger
	}
	if global.Hunger < 1
	{
		global.Hunger = 1
		room_goto(GameEnd_Starve)
	
	}else if global.BBird1 < 0
	{
		global.BBirdDeath = true
		
	}
}