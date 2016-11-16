///scr_sniperattack
    image_speed = 0.18;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_sniperAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_sniperAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_sniperAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_sniperAttDown;


    
if image_index >= 4 && attacked == false {


   
    
    //

    var b = instance_create(o_sniper.x, o_sniper.y, o_sniperarrow);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(5,b.direction);
    b.phy_speed_y = lengthdir_y(5,b.direction);
    

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    attacked = true;
}




