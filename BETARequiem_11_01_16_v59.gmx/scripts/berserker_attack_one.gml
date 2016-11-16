///berserker_attack_one

image_speed = 0.2 + o_player_stats.rage * 0.002;
if image_speed > 0.4
    image_speed = 0.4;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_berserkerAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_berserkerAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_berserkerAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_berserkerAttDown;
    
    
if image_index >= 2 && attacked == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_berserkerAttRight:
        xx = x+16;
        yy = y;
        break;
    
    case spr_berserkerAttLeft:
        xx = x-16;
        yy = y;
    break;
    
    case spr_berserkerAttUp:
        xx = x;
        yy = y-16;
    break;
    
    case spr_berserkerAttDown:
        xx = x;
        yy = y+16;
    break;

}
    var damage = instance_create(xx, yy, o_berserkerdamage);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    attacked = true;
}




if image_index >= 5{

if (attack_key) {
    image_index = 0;
    state = berserker_attack_two;
    }
}

