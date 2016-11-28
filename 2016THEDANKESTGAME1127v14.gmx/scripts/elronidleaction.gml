image_speed = .2;
sprite_index = spr_elronidleaction;
if keyboard_check_pressed(vk_anykey) {
    alarm[2] = 300;
    state = elronmove;
    }
