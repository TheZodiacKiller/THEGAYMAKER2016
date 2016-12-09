///spiderqueen_attack 
spd = 0;
attspd = 0;
image_speed = 0.18;
if checkforplayer == false {
    image_index = 0;
    checkforplayer = true;
    target = instance_nearest(x,y,o_player);
    sprite_index = spr_spiderqueenacidspit;
    if target.x < x {
        image_xscale = -1;
    } else {
        image_xscale = 1;
        }

    }
    
if image_index >= 10 && webattacked == false {



    var b = instance_create(x, y, o_acidspit);
    
    b.direction = point_direction(x,y,o_player.x,o_player.y);
    
    b.phy_speed_x = lengthdir_x(4,b.direction);
    b.phy_speed_y = lengthdir_y(4,b.direction);
    b.phy_rotation = -point_direction(x, y, x+10,y);

    

    //Tells the damage object that THE PLAYER (id) is the creator
    b.creator = id;
    webattacked = true;
}




