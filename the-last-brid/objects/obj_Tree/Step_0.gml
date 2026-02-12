
//互动吃虫子
if collision_rectangle(y+20,x-20,x+84,y-176, obj_MainBird,false,false)
{
	global.X = Tree.x
	global.Y = Tree.y
	if keyboard_check(ord("F"))
	{
		
		alarm_set(0,30)

		
	}
	
}