
//互动吃虫子
	if available == true and global.DEnd == false
	{
		if collision_rectangle(x-20,y+20,x+84,y-176, obj_MainBird,false,false) and keyboard_check(ord("F"))
		{
	global.tree = Tree
	StopMoving()
	alarm_set(0,10)
	variable_global_set(treeNum,false)
	
		}
	}
	