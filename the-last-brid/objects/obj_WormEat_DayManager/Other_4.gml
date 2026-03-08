
if room = WormPicking
{
	var start = true
	for (var i = 0; i < global.WormSpawn; i ++)
	{
		
		var spawn_x = random_range(100,300)
		var spawn_y = random_range(100,150)
		var times = i + 1
		instance_create_layer(spawn_x* times, spawn_y* times, "instances", obj_worm)
	}
}