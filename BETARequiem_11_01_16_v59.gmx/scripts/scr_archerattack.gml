///scr_archerattack
if instance_exists(o_flurryaura)
    image_speed = 0.5;
if !instance_exists(o_flurryaura)
    image_speed = 0.25;
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_archerAttackRight;



if dir < 135 && dir > 45
    sprite_index = spr_archerAttackUp;


if dir > 135 && dir < 225
    sprite_index = spr_archerAttackLeft;



if dir < 315 && dir > 225
    sprite_index = spr_archerAttackDown;


    
if image_index >= 4 && attacked == false {


   
    
    //
    if (roll(0.8)) {
    var b = instance_create(o_archer.x, o_archer.y, o_arrow);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(3,b.direction);
    b.phy_speed_y = lengthdir_y(3,b.direction);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
    }
    else {
    var b = instance_create(o_archer.x, o_archer.y, o_critarrow);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(3,b.direction);
    b.phy_speed_y = lengthdir_y(3,b.direction);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
    instance_create(x,y,o_criticaleffect);
    }
    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    attacked = true;
}




