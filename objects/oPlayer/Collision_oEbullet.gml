/// @desc Destroy Instance

if (global.hp > 0)
{
	global.hp--;
	with (other) instance_destroy();
}

if (global.hp <= 0)
{
	PlayerKill();
	with (other) instance_destroy();
}