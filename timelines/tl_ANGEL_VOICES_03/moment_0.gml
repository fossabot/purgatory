///@description Start of third Box, MB, Main Drum

//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
//if!(variable_global_exists(skip))
//{
//	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
//	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
//	EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
//	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
//}

//EQ1.image_index = 0;
//EQ2.image_index = 0;
//EQ3.image_index = 0;
//EQ4.image_index = 0;
//EQ5.image_index = 0;


by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebl = obj_enemy_bullet; // this one aims for the player





// END OF SKIP CODE
// This code is for the main beat.
//enemy_bullet(oebw, 270, bx, by + 40);



enemy_bullet_vinyl(-50, 1075, 270, (bx - 193) - 40 , by + 100, 5);

// the bx - 49 is the drum
//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 200;
for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60 + (i * 4), by + 40);
}
	

