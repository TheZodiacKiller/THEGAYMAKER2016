///magefireball

    image_speed = 0.35;
instance_create(x,y,fireballeffect);
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_mageAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_mageAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_mageAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_mageAttDown;




if att == false && image_index >= 4  {
        var a = instance_create(o_player.x, o_player.y, o_fireballbolt);
        a.direction = point_direction(x,y,mouse_x,mouse_y);
        a.phy_speed_x = lengthdir_x(4,a.direction + irandom_range(4,-4));
        a.phy_speed_y = lengthdir_y(4,a.direction + irandom_range(4,-4));
        a.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
        //Tells the damage object that THE PLAYER (id) is the creator
        a.creator = id;
        att = true;
        
    }



