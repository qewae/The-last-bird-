xspd = 0
yspd = 0

if room = WormPicking
{
	sprite_index = spr_blank
}
else
{
	sprite_index = spr_MainBird_right
}
if instance_exists(global.tree){
	
	
	x = global.tree.x + 32
    y = global.tree.y + 32
}
