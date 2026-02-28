var dy = 16
var dx = 16
var boxWidth = 512
var boxHight = 64

draw_set_font(UIFont)
draw_set_halign(fa_center)
draw_set_valign(fa_center)


//饥饿条
var boxlength = boxWidth* (global.Hunger/Max_Hunger)

draw_sprite_stretched(spr_hunger, 0, dx, dy, boxWidth, boxHight)
draw_sprite_stretched_ext(spr_hunger, 0, dx, dy, boxlength, boxHight, c_red, 0.6)
draw_text(dy + boxWidth/2, dy + boxHight/2, "Hunger")

//空格起飞提示

var sx = 516
var sy = 416
var spaceWidth = 256
var spaceHight = 64
if global.start = false and global.SpaceT = true
{
	draw_sprite_stretched(spr_SpaceBar, 0, sx, sy, spaceWidth, spaceHight)
	draw_text(sx + spaceWidth/2, sy + spaceHight/2, "SPACE")
}
	
//拿虫子

if collision_circle(x,y,64, obj_Tree1,false,false) and global.YT = true
{
	draw_sprite(spr_Fkey, 0, sx+100, sy)
}
