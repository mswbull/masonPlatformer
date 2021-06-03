/// @desc Variables and Equip Gun

hit = 0;

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oEgun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;