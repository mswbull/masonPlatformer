/// @desc Destroy Instance

if (global.hp > 0)
{
	global.hp--;
	hit = 15
	with (other) instance_destroy();
}

if (global.hp <= 0)
{
	PlayerKill();
	with (other) instance_destroy();
}
