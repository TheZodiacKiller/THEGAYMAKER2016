sprite_index = spr_chieftainbattlecry;
image_speed = 0.1;
if image_index > 3 && warcry == false {
    var wcvfx = instance_create(x,y,o_warcryvfx);
    wcvfx.creator = id;
    var wc = instance_create(x,y,o_warcrybuff);
    wc.creator = id;
    warcry = true;
    }
    
