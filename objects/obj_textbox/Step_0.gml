/// @description Handles Keys Pressed/Input

if (keyboard_check(vk_anykey) and string_length(text) < 10)
{
	text = text + string(keyboard_string); // makes the key you pressed add on to the string itself
	keyboard_string = ""; //makes the keyboard reset back to nothing when you press another button
}
if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer == 2) //  makes sure its not being held down
{
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}

if (keyboard_check_pressed(vk_backspace))
{
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_timer = -4;
}
if (keyboard_check_pressed(vk_enter))
{
	show_debug_message("pressed enter");
	if (global.highscore == false && room == 1)
	{
		
		highscore_add(text, score);
		room_goto(0);
		global.highscore = true;
		score = 0;
		instance_destroy();
		
	
	}

}
//Handle Timer Update
if (delete_timer != 2)
{
	delete_timer++;
}
