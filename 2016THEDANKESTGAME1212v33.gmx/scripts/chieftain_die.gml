//chieftain_die
image_speed = .15;
sprite_index = spr_chieftaindeath;
if image_index > 7 {
    image_speed = 0;
    alarm[3] = 1;
    }
