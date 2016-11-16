///bda4

image_speed = 0.35;

var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_bda4r;



if dir < 135 && dir > 45
    sprite_index = spr_bda4u;


if dir > 135 && dir < 225
    sprite_index = spr_bda4l;



if dir < 315 && dir > 225
    sprite_index = spr_bda4d;
    
    
if image_index >= 1 && a4 == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_bda4r:
        xx = x+16;
        yy = y;
        break;
    
    case spr_bda4l:
        xx = x-16;
        yy = y;
    break;
    
    case spr_bda4u:
        xx = x;
        yy = y-16;
    break;
    
    case spr_bda4d:
        xx = x;
        yy = y+16;
    break;

}
    var damage = instance_create(xx, yy, o_bddamage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    a4 = true;
    stack += 1;
}




if image_index >= 4{

if (attack_key) {
    image_index = 0;
    state = bda5;
    }
}

