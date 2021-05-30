/// @desc Destroy Instance

if (hp > 0)
{
	hp--;
	with (other) instance_destroy();
}

if (hp <= 0)
{
	PlayerKill();
	with (other) instance_destroy();
}