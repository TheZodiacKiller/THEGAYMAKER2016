///scr_attack_state_one

image_speed = 0.25;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_warriorAtt1Right;



if dir < 135 && dir > 45
    sprite_index = spr_warriorAtt1Up;


if dir > 135 && dir < 225
    sprite_index = spr_warriorAtt1Left;



if dir < 315 && dir > 225
    sprite_index = spr_warriorAtt1Down;
    
    
if image_index >= 2 && attacked == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_warriorAtt1Right:
        xx = x+16;
        yy = y;
        break;
    
    case spr_warriorAtt1Left:
        xx = x-16;
        yy = y;
    break;
    
    case spr_warriorAtt1Up:
        xx = x;
        yy = y-16;
    break;
    
    case spr_warriorAtt1Down:
        xx = x;
        yy = y+16;
    break;

}
    var damage = instance_create(xx, yy, o_damage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    attacked = true;
}




if image_index >= 4{

if (attack_key) {
    image_index = 0;
    state = scr_attack_state_two;
    }
}

