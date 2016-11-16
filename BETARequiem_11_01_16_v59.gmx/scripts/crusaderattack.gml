///crusader_attack_one
if instance_exists(o_crusader) {
image_speed = 0.3;

var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_crusaderAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_crusaderAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_crusaderAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_crusaderAttDown;
    
    
if image_index >= 3 && attacked == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_crusaderAttRight:
        xx = x+22;
        yy = y;
        var damage = instance_create(xx, yy, o_crusaderdamageh);
        break;
    
    case spr_crusaderAttLeft:
        xx = x-22;
        yy = y;
        var damage = instance_create(xx, yy, o_crusaderdamageh);
    break;
    
    case spr_crusaderAttUp:
        xx = x;
        yy = y-22;
        var damage = instance_create(xx, yy, o_crusaderdamagev);
    break;
    
    case spr_crusaderAttDown:
        xx = x;
        yy = y+22;
        var damage = instance_create(xx, yy, o_crusaderdamagev);
    break;

}
    
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    attacked = true;
}

}





