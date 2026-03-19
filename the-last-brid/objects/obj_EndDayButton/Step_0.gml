if collision_rectangle(x,y,x1,y1, obj_cursor,false, false) and mouse_check_button(mb_left)
{
	global.Hunger += global.WormCount
	global.WormCount = 0
	global.transition_Feed = true
	if global.BirdFeedingT == true
{
	global.BirdFeedingT = false
}
}
