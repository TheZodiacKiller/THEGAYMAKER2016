///huntertwinfang


image_speed = 0.5;
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_hunterattRight;



if dir < 135 && dir > 45
    sprite_index = spr_hunterattUp;


if dir > 135 && dir < 225
    sprite_index = spr_hunterattLeft;



if dir < 315 && dir > 225
    sprite_index = spr_hunterattDown;


if image_index >= 2 && t1 == false {

    var a = instance_create(o_player.x, o_player.y, o_twinfang);
    
    a.direction = point_direction(x,y,mouse_x,mouse_y);
    a.phy_speed_x = lengthdir_x(3,a.direction);
    a.phy_speed_y = lengthdir_y(3,a.direction);
    a.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    a.creator = id;
    t1 = true;
}   
if image_index >= 4 && t2 == false {

    var b = instance_create(o_player.x, o_player.y, o_twinfang);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(3,b.direction);
    b.phy_speed_y = lengthdir_y(3,b.direction);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);

    
    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    t2 = true;
}




