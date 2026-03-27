if global.TreeExplode == true
{
	instance_create_layer(x,y,"instances", obj_CuttedTree)
	draw_sprite(spr_TreeCutted1,true,x,y)
	instance_destroy()
}
