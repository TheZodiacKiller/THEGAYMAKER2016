///Elron L2
image_speed = .25;
sprite_index = spr_elronL2;

if image_index >= 7 && (la_key) {
    image_index = 0;
    state = elronl3;
    }
if image_index >= 7 && (ha_key) {
    image_index = 0;
    state = elronh1v2;
    }
