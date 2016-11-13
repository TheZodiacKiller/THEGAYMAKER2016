///bladedancerrend
    image_speed = 0.5;

var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_bdrendright;



if dir < 135 && dir > 45
    sprite_index = spr_bdrendup;


if dir > 135 && dir < 225
    sprite_index = spr_bdrendleft;



if dir < 315 && dir > 225
    sprite_index = spr_bdrenddown;


    
if image_index >= 2 && rend == false {


   
    
    //
    
    var b = instance_create(o_player.x, o_player.y, o_rendbullet);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(3,b.direction);
    b.phy_speed_y = lengthdir_y(3,b.direction);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    rend = true;
}




