
if room = WormPicking
{
	if global.day > 1
	{
	 global.WormSpawn = irandom_range(global.WormSpawn, global.WormSpawnVar)
	}
	else
	{
		 global.WormSpawn = global.WormSpawn
	}
	
	var start = true
	for (var i = 0; i < global.WormSpawn; i ++)
	{
		if global.WormSpawn < 5{
		var spawn_x = random_range(100,300)
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