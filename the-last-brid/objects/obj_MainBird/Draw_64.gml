var dx = 16
var dy = 16
var boxWidth = 512
var boxHight = 64

draw_set_font(UIFont)
draw_set_halign(fa_center)
draw_set_valign(fa_center)


//饥饿条
if room = Forest or room = WormFeeding
{
var boxlength = boxWidth* (global.Hunger/Max_Hunger)

draw_sprite_stretched(spr_hunger, 0, dx, dy, boxWidth, boxHight)
draw_sprite_stretched_ext(spr_hunger, 0, dx, dy, boxlength, boxHight, c_red, 0.6)
draw_text(dx + boxWidth/2, dy + boxHight/2, "Hunger")
}
//幼虫饥饿条
if room = WormFeeding{
var bx = 16
var by = dy + 100
var Babyboxlength = boxWidth* (global.BBird1/global.BBirdMaxHunger)

draw_sprite_stretched(spr_hunger, 0, bx, by, boxWidth, boxHight)
draw_sprite_stretched_ext(spr_hunger, 0, bx, by, Babyboxlength, boxHight, c_aqua, 0.6)
draw_text(bx + boxWidth/2, by + boxHight/2, "Baby1")
}
//虫子数量显示
var wx = 1366 + 16
var wy = 0 + dy
draw_sprite(spr_worm, 0, wx-200, wy)
draw_text(wx-120,wy+30,"X")
draw_text(wx-90,wy+30,global.WormCount)




//空格起飞提示
var sx = 516
var sy = 616
var spaceWidth = 256
var spaceHight = 64
if global.start = false and global.SpaceT = true
{
	draw_sprite_stretched(spr_SpaceBar, 0, sx, sy, spaceWidth, spaceHight)
	draw_sprite(spr_FlyTutorial,0,sx-412,sy-130)
	draw_text(sx + spaceWidth/2, sy + spaceHight/2, "SPACE")
}
	
//拿虫子

if collision_circle(x,y,32, obj_Tree,false,false) and global.YT = true
{
	draw_sprite(spr_Fkey, 0, sx+100, sy)
}
//睡觉
if collision_circle(x,y,32, obj_HouseTree,false,false) and global.DEnd == true and global.ST = true
{
	draw_sprite(spr_Fkey, 0, sx+100, sy)
	draw_text(sx + 300, sy, "Sleep")
}

//时间条
draw_text(dx + 64, dy + 128, "Time:")
draw_text(dx + 128, dy + 128, global.time)

draw_set_font(MiddleScreen)
if global.time == 6
{
draw_text(sx + 100,sy - 100, "Need To Rest!")
draw_text(sx + 100,sy - 180, "（Go Back To Your Nest To Rest)")
}
draw_set_font(UIFont)