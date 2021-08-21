/// @desc Equip Gun for Trap

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oEGunTrap)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;