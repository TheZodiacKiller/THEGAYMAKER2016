///goblin_attack 
spd = 0;
attspd = 0;
image_speed = 0.1;
if checkforplayer == false {
    checkforplayer = true;
    var target = instance_nearest(x,y,o_player);
    sprite_index = spr_goblinattack;
    if target.x < x {
        image_xscale = -1;
    } else {
        image_xscale = 1;
        }

    }
//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 7 && att == false {
    att = true;
    switch (image_xscale) {
        case 1:
            xx = x + 12;
            yy = y ;
            break;
        case -1:
            xx = x - 12;
            yy = y;
            break;
            }
    var a = instance_create(xx,yy,o_goblinhb);
    a.creator = id;
    
    }


