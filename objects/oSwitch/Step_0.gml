/// @desc Sign Text Trigger

pressed = place_meeting(x, y, oPlayer);

if (pressed == true && door != undefined && instance_exists(oDoorSide)) {
	door.open = true;	
}