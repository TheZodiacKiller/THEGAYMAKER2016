var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;
var cx = width div 2;
var cy = height div 2;
///snipermove(hspd, vspd)
scr_get_input();


//Axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

//Get hspd and vspd
hspd = lengthdir_x(len,dir)
vspd = lengthdir_y(len,dir)

// Move


//Control sprite
image_speed = sign(len)*0.12;
if (len == 0) image_index = 0;


//Vertical Sprites
if (vspd > 0) {
sprite_index = spr_sniperDown;
} else if (vspd < 0) {
sprite_index = spr_sniperUp;
}

//Horizontal Sprites
if (hspd > 0) {
    sprite_index = spr_sniperRight;
} else if (hspd < 0) {
    sprite_index = spr_sniperLeft;
}



//AUTOATTACKS
if (attack_key) {
    image_index = 0;

    state = scr_sniperattack;
    }

//RC ABILITY
if (rc_key) && o_player_stats.rc_cooldown <= 0 && o_player_stats.mp >= 100 {
    image_index = 0;
    state = scr_sniperchargesnipe;
    
    with (o_player_stats) {
        mp -= 100;
        rc_cooldown = maxrc_cooldown;
        }
    }

//Q ABILITY
if (q_key) && o_player_stats.q_cooldown <= 0 && o_player_stats.mp >= 40 {
    image_index = 0;
    instance_create(x,y,o_mine);
    state = sniperdash;
    alarm[0] = 15;
    with (o_player_stats) {
    mp -= 40;
    q_cooldown = maxq_cooldown;
    }
}

//E ABILITY
if (e_key) && o_player_stats.e_cooldown <= 0 && o_player_stats.mp >= 50 {
    instance_create(mouse_x,mouse_y,o_trap);
    with (o_player_stats) {
    mp -= 50;
    e_cooldown = maxe_cooldown;
    }
}


//Check for collision based on the GRID, not SOLID

if (testcheck(x ,y)) {
    phy_position_x = cx*CELL_WIDTH+CELL_WIDTH/2;
    phy_position_y = cy*CELL_HEIGHT+CELL_HEIGHT/2;
    o_player_stats.hp -= o_player_stats.hp*0.1;
    }
if (testcheck(x ,y+5)) {
    phy_position_x = cx*CELL_WIDTH+CELL_WIDTH/2;
    phy_position_y = cy*CELL_HEIGHT+CELL_HEIGHT/2;
    o_player_stats.hp -= o_player_stats.hp*0.1;
    }
if (testcheck(x+6 ,y)) {
    phy_position_x = cx*CELL_WIDTH+CELL_WIDTH/2;
    phy_position_y = cy*CELL_HEIGHT+CELL_HEIGHT/2;
    o_player_stats.hp -= o_player_stats.hp*0.1;
    }
if (testcheck(x-6 ,y)) {
    phy_position_x = cx*CELL_WIDTH+CELL_WIDTH/2;
    phy_position_y = cy*CELL_HEIGHT+CELL_HEIGHT/2;
    o_player_stats.hp -= o_player_stats.hp*0.1;
    }
        
//Horizontal Collision
if (grid_place_meeting(x+hspd, y)) {
    while (!grid_place_meeting(x+sign(hspd), y)) {
        x += sign(hspd);
        }
    hspd = 0;
}



//Horizontal Movement
phy_position_x+=hspd;

//Vertical Collision
if (grid_place_meeting(x, y+vspd)) {
    while(!grid_place_meeting(x, y+sign(vspd))) {
        y+= sign(vspd);
        }
    vspd = 0;
}

//Vertical Movement
phy_position_y+=vspd;
