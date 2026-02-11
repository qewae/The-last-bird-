if global.mouse == false
{
	window_set_cursor(cr_none)
}
else
{
	window_set_cursor(cr_arrow)
}
if room = WormPicking
{
	global.mouse = true
}
else
{
	global.mouse = false
}