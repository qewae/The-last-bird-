if room = Menu
{
	global.mouse = true
}
else if room = WormPicking or room = WormFeeding
{
	global.mouse = true
}
else
{
	global.mouse = false
}
window_set_cursor(cr_none)