///scr_volley_state
if instance_exists(o_flurryaura)
    image_speed = 0.5;
if !instance_exists(o_flurryaura)
    image_speed = 0.25;
var dir = point_direction(x,y,mouse_x,mouse_y)
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

   var i;
    
    //
    for (i = 0; i < 7; i++) {
    var a = instance_create(o_archer.x, o_archer.y, o_arrow);    
    
    a.direction = point_direction(x,y,mouse_x,mouse_y);
    a.phy_speed_x = lengthdir_x(3,a.direction + ((i - 3) * 5));
    a.phy_speed_y = lengthdir_y(3,a.direction + ((i - 3) * 5));
    a.phy_rotation = -point_direction(x,y,mouse_x + ((i - 3) * 5),mouse_y + ((i - 3) * 5));
    a.creator = id;
    }   

    
    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    attacked = true;
}




