if global.TreeExplode == true
{
	instance_create_layer(x+300,y,"instances", obj_CuttedTree2)
	draw_sprite(spr_TreeCutted1,true,x,y+100)
	instance_destroy()
}
