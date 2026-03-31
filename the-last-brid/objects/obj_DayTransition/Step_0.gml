TransitionPage(2, spr_DayTransition2)
TransitionPage(3, spr_DayTransition3)
TransitionPage(4, spr_DayTransition4)
TransitionPage(5, spr_DayTransition5)
TransitionPage(6, spr_DayTransition6)
TransitionPage(7, spr_DayTransition7)

if global.transition_Day == true
{
	alpha += 0.005
}
if alpha == 1
{
	global.transition_Day = false
	CloseTrans = true
}
if CloseTrans == true
{
	if alpha == 0
	{
		//一天结算
		global.transition_Day = false
		global.Hunger -= 8
		global.BBird1 -= 3
		global.TreeExplode = false
		AllTavlTrue()
		//
		
		room_goto(Forest)
		
	}
	else
	{
	alpha -= 0.005
	}
		
}

draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_white, alpha)
