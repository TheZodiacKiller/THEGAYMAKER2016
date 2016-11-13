///bda5

image_speed = 0.7;

var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_bda5r;



if dir < 135 && dir > 45
    sprite_index = spr_bda5u;


if dir > 135 && dir < 225
    sprite_index = spr_bda5l;



if dir < 315 && dir > 225
    sprite_index = spr_bda5d;
    
    
if image_index >= 12 && a5 == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_bda5r:
        xx = x+48;
        yy = y;
        break;
    
    case spr_bda5l:
        xx = x-48;
        yy = y;
    break;
    
    case spr_bda5u:
        xx = x;
        yy = y-16;
    break;
    
    case spr_bda5d:
        xx = x;
        yy = y+16;
    break;

}
    var damage = instance_create(xx, yy, o_bddamage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    a5 = true;
    stack += 1;
}

