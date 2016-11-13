///Elron Move
scr_get_input();
//len and spd are defined in the object, not in the script
//Axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Direction
var dir = point_direction(0, 0, xaxis, yaxis);

//Get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

//Get hspd and vspd [BETA CODE - CAN BE IMPROVED LATER]
hspd = lengthdir_x(len,dir)
vspd = lengthdir_y(len,dir)
phy_position_x+=hspd;
phy_position_y+=vspd/1.5;



    if (hspd == 0) && (vspd == 0) {
        sprite_index = spr_elronidle;
        image_speed = .06;
        }
        
if (dash == false) {
    if (hspd > 0) {
        sprite_index = spr_elronwalk;
        image_xscale = 1;
        image_speed = .12;
    } 
    if (hspd < 0) {
        sprite_index = spr_elronwalk;
        image_xscale = -1;
        image_speed = .12;
    }
    if (vspd != 0) && image_xscale == 1 {
        sprite_index = spr_elronwalk;
        image_xscale = 1;
        image_speed = .12;
        }
    if (vspd != 0) && image_xscale == -1 {
        sprite_index = spr_elronwalk;
        image_xscale = -1;
        image_speed = .12;
        }
    }
    
 if (dash == true) {
    spd = 2;
    if (hspd > 0) {
        sprite_index = spr_elronrun;
        image_xscale = 1;
        image_speed = .12;
    } 
    if (vspd != 0) && image_xscale == 1 {
        sprite_index = spr_elronrun;
        image_xscale = 1;
        image_speed = .12;
        }
    

    if (hspd < 0) {
        sprite_index = spr_elronrun;
        image_xscale = -1;
        image_speed = .12;
    }
    if (vspd != 0) && image_xscale == -1 {
        sprite_index = spr_elronrun;
        image_xscale = -1;
        image_speed = .12;
        }
    }
    
//RUNNING SCRIPT
if (dleft_key) || (dright_key) {
    alarm[1] = 5;
    dash = true;
    }

    
    
//LIGHT & HEAVY ATTACKS
if (la_key) {
    image_index = 0;
    state = elronl1;
    }
if (ha_key) {
    image_index = 0;
    state = elronh1v1;
    }
