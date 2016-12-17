///chieftain_attack 
spd = 0;
attspd = 0;
image_speed = 0.25;
if checkforplayer == false {
    checkforplayer = true;
    target = instance_nearest(x,y,o_player);
    sprite_index = spr_chieftainattack;
    if target.x < x {
        image_xscale = -1;
    } else {
        image_xscale = 1;
        }

    }

//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 12 && att == false {
    att = true;
    switch (image_xscale) {
        case 1:
            xx = x + 16;
            yy = y + 10;
            break;
        case -1:
            xx = x - 16;
            yy = y + 10;
            break;
            }
    var a = instance_create(xx,yy,o_chieftainhb);
    a.creator = id;
    
    }

