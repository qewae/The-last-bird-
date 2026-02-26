
//互动吃虫子
if collision_rectangle(y+20,x-20,x+84,y-176, obj_MainBird,false,false)
{
	

	if keyboard_check(ord("F"))
	{
	global.tree = Tree
	

	if global.tree.avalable == true
	{
		
		StopMoving()
		global.YT = false
		global.tree = Tree
		global.tree.avalable = false
		alarm_set(0,10)
	}
		
		
	}
	
}