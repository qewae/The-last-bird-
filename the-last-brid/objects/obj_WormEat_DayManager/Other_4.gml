
//捡虫子机制
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

//树被砍与天数
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

//时间计数与显示时间转换
if global.time = 0
{
	global.timeDisplay = "10:00AM"
}
if global.time = 1
{
	global.timeDisplay = "12:00PM"
}
if global.time = 2
{
	global.timeDisplay = "2:00PM"
}
if global.time = 3
{
	global.timeDisplay = "4:00PM"
}
if global.time = 4
{
	global.timeDisplay = "6:00PM"
}
if global.time = 5
{
	global.timeDisplay = "8:00PM"
}
if global.time = 6
{
	global.timeDisplay = "10:PM"
}