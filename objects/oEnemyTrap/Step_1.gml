/// @desc Death and Kills

if (hp <= 0)
{
	instance_create_layer(x,y,layer,oExplosion)
	
	with (mygun) instance_destroy();
	if (instance_exists(oPlayer))
	instance_destroy();
}