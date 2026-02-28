
//互动吃虫子
	if available == true
	{
		if collision_rectangle(y+20,x-20,x+84,y-176, obj_MainBird,false,false) and keyboard_check(ord("F"))
		{
	StopMoving()
	alarm_set(0,10)
	variable_global_set(treeNum,false)
	
		}
	}
	