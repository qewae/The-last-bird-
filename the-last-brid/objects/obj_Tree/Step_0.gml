
//互动吃虫子
if collision_rectangle(y+20,x-20,x+84,y-176, obj_MainBird,false,false)
{
	

	if keyboard_check(ord("F"))
	{
		global.X = Tree.x
		global.Y = Tree.y
		alarm_set(0,10)
		

		
	}
	
}