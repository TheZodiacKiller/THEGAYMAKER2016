///mimic_move
sight = 500;

    var dirr = point_direction(x,y,o_player.x,o_player.y);
    var hspd = lengthdir_x(spd, dirr);
    var vspd = lengthdir_y(spd, dirr);
    

    phy_position_x += hspd;
    phy_position_y += vspd;

if dirr < 45 && dirr > 0 || dirr > 315 && dirr < 360   
    sprite_index = spr_mimicmoveRIGHT;



if dirr < 135 && dirr > 45
    sprite_index = spr_mimicmoveUP;


if dirr > 135 && dirr < 225
    sprite_index = spr_mimicmoveLEFT;



if dirr < 315 && dirr > 225
    sprite_index = spr_mimicmoveDOWN;
    
if image_index <= 2 {
    image_speed = .05;
    spd = 0;
    }
else {
    image_speed = .16;
    spd = 1.5;
    }
