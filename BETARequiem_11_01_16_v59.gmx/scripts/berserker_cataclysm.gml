///berserker_cataclysm

image_speed = 0.25 + o_player_stats.rage * 0.0025;
if image_speed > 0.5
    image_speed = 0.5;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_berserkerAtt2Right;



if dir < 135 && dir > 45
    sprite_index = spr_berserkerAtt2Up;


if dir > 135 && dir < 225
    sprite_index = spr_berserkerAtt2Left;



if dir < 315 && dir > 225
    sprite_index = spr_berserkerAtt2Down;
    


if image_index >= 8 && attacked2 == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_berserkerAtt2Right:
        xx = x+24;
        yy = y;
    break;
    
    case spr_berserkerAtt2Left:
        xx = x-24;
        yy = y;
    break;
    
    case spr_berserkerAtt2Up:
        xx = x;
        yy = y-24;
    break;
        
    case spr_berserkerAtt2Down:
        xx = x;
        yy = y+24;
    break;
    

}
    var damage = instance_create(xx, yy, o_cataclysmAOE);
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    
    var b = instance_create(o_player.x, o_player.y, o_cataclysmbullet);
    
    b.direction = point_direction(x,y,mouse_x,mouse_y);
    b.phy_speed_x = lengthdir_x(3,b.direction);
    b.phy_speed_y = lengthdir_y(3,b.direction);
    b.phy_rotation = -point_direction(x, y, mouse_x, mouse_y);
    attacked2 = true;
    b.creator = id;
    }

