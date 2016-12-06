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
    len = global.spd;
}

//Get hspd and vspd [BETA CODE - CAN BE IMPROVED LATER]
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);
phy_position_x+=hspd;
phy_position_y+=vspd/1.5;


//Idle
if (hspd == 0) && (vspd == 0) {
    sprite_index = spr_elronidle;
    image_speed = .06;
        }
//Idle action check
if idlecheck == false && sprite_index == spr_elronidle {
    idlecheck = true;
    alarm[2] = 300;
    }
        
//Walk when dash == false        
if (dash == false) {
    global.spd = 1.35;
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
//Run when dash == true   
 if (dash == true) {
    global.spd = 2;
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
if sprite_index != spr_elronrun {
    if (la_key) {
        image_index = 0;
        state = elronl1;
        }
    if (ha_key) {
        image_index = 0;
        state = elronh1v1;
        }
}
//LIGHT DASH ATTACK
if (sprite_index == spr_elronrun) && (la_key) {
    image_index = 0;
    dash = false;
    state = elrondashatt;
    }
//SKILL A
if a1_key {
    image_index = 0;
    
    state = elrona1;
    }

//SKILL B
if a2_key && !instance_exists(o_elronBfx) {
    instance_create(x,y,o_elronBbuff);
    instance_create(x,y,o_elronBfx);
    
    }
    
//ULT
if a3_key && !instance_exists(o_elronultsigil) {
    image_index = 0;
    state = elronult;
    }
if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }

