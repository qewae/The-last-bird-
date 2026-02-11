//吃虫子
if collision_rectangle(x,y,x+64,y+64,obj_MainBird,false,false)
{
	global.Hunger += 1
	instance_destroy()
}