///rogueattack2

image_speed = 0.35;

var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_rogueatt2Right;



if dir < 135 && dir > 45
    sprite_index = spr_rogueatt2Up;


if dir > 135 && dir < 225
    sprite_index = spr_rogueatt2Left;



if dir < 315 && dir > 225
    sprite_index = spr_rogueatt2Down;
    
    
if image_index >= 1 && attack2 == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_rogueatt2Right:
        xx = x+16;
        yy = y;
        break;
    
    case spr_rogueatt2Left:
        xx = x-16;
        yy = y;
    break;
    
    case spr_rogueatt2Up:
        xx = x;
        yy = y-16;
    break;
    
    case spr_rogueatt2Down:
        xx = x;
        yy = y+16;
    break;

}
    var damage = instance_create(xx, yy, o_roguedamage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    attack2 = true;
}




if image_index >= 4{

if (attack_key) {
    image_index = 0;
    state = rogueattack3;
    }
}

