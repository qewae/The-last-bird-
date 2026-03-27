if collision_rectangle(x,y,x1,y1,obj_MainBird, false, true) and global.TreeExplode == true
{
	global.DEnd = false
	global.FinalTrans = true
	alarm_set(1,360)
}