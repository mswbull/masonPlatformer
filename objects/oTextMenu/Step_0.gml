/// @desc Progress Text

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fSign);
if (h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy When Done

timer = 30;
timer = timer - 1;

if (letters >= length) && (timer == 0)
{
	instance_destroy();
	with (oCamera) follow = oPlayer;
}