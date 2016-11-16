///assassinattack

    image_speed = 0.45;
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_assassinAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_assassinAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_assassinAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_assassinAttDown;


//Shuriken Mode
if o_player_stats.hp > o_player_stats.maxhp * 0.5 {
if a1 == false && image_index >= 0  {
        var a = instance_create(o_player.x, o_player.y, o_shuriken);
        a.direction = point_direction(x,y,mouse_x,mouse_y);
        a.phy_speed_x = lengthdir_x(4,a.direction + irandom_range(2,-2));
        a.phy_speed_y = lengthdir_y(4,a.direction + irandom_range(2,-2));
        a.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
        //Tells the damage object that THE PLAYER (id) is the creator
        a.creator = id;
        a1 = true;
        
    }
    
if instance_exists(o_shadowpartner) && image_index >= 5 && a2 == false {
            var b = instance_create(o_player.x, o_player.y, o_shuriken2);
            b.direction = point_direction(x,y,mouse_x,mouse_y);
            b.phy_speed_x = lengthdir_x(4,b.direction + irandom_range(2,-2));
            b.phy_speed_y = lengthdir_y(4,b.direction + irandom_range(2,-2));
            b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
            b.creator = id;
            a2 = true;
            }
    
}

//Kunai Mode
if o_player_stats.hp < o_player_stats.maxhp * 0.5 {
if a1 == false && image_index >= 0 {
        var a = instance_create(o_player.x, o_player.y, o_kunai);        
        
        a.direction = point_direction(x,y,mouse_x,mouse_y);
        a.phy_speed_x = lengthdir_x(4,a.direction + irandom_range(2,-2));
        a.phy_speed_y = lengthdir_y(4,a.direction + irandom_range(2,-2));
        a.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
        //Tells the damage object that THE PLAYER (id) is the creator
        a.creator = id;
        a1 = true;
       
    }
if instance_exists(o_shadowpartner) && image_index >= 5 && a2 == false {
            var b = instance_create(o_player.x, o_player.y, o_kunai2);
            b.direction = point_direction(x,y,mouse_x,mouse_y);
            b.phy_speed_x = lengthdir_x(4,b.direction + irandom_range(2,-2));
            b.phy_speed_y = lengthdir_y(4,b.direction + irandom_range(2,-2));
            b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
            b.creator = id;
            a2 = true;
    }    
    
}





