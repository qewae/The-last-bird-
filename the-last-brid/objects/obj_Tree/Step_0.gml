
//互动吃虫子
	if available == true and global.DEnd == false
	{
		if collision_rectangle(x-20,y-20,x+x1,y+y1, obj_MainBird,false,false) and keyboard_check(ord("F"))
		{
	//最后一天互动出发老家爆炸
	if global.day == 7
	{
		global.TreeExplode = true
	}
	//
	global.tree = Tree
	StopMoving(obj_MainBird.fly)
	alarm_set(0,5)
	variable_global_set(treeNum,false)
	
	
		}
	}

   
	