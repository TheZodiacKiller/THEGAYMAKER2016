///orc_throw
spd = 0;
rattspd = 0;
if image_index >= 5 && image_index <= 6
    image_speed = 0.02;
else
    image_speed = 0.1;
if checkforplayer == false {
    image_index = 0;
    checkforplayer = true;
    target = instance_nearest(x,y,o_player);
    sprite_index = spr_orcthrow;
    if target.x < x {
        image_xscale = -1;
    } else {
        image_xscale = 1;
        }

    }
if image_index >= 7 && ratt == false {



    var b = instance_create(x, y, o_orcaxe);
    
    b.direction = point_direction(x,y,o_player.x,o_player.y);
    
    b.phy_speed_x = lengthdir_x(2,b.direction);
    b.phy_speed_y = lengthdir_y(2,b.direction);
    b.phy_rotation = -point_direction(x, y, x,y);

    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    ratt = true;
}


