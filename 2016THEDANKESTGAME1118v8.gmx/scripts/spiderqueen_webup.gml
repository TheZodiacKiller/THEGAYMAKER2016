///spiderqueen_webup 
spd = 0;
attspd = 0;
image_speed = 0.2;
sprite_index = spr_spiderqueenwebup;

if image_index >= 15 {
    targetx = random(room_width);
    targety = random(room_height);
    image_index = 2; 
    state = spiderqueen_webdown;
    }



