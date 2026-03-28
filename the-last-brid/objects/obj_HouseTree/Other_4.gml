if global.TreeExplode == true
{
	instance_create_layer(x,y+300,"instances", obj_CuttedTree2)
	draw_sprite(spr_TreeCutted1,true,x,y)
	instance_destroy()
}
