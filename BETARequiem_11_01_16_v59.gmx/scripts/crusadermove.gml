var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;
var cx = width div 2;
var cy = height div 2;
///crusadermove(hspd, vspd)
scr_get_input();


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

//Get hspd and vspd
hspd = lengthdir_x(len,dir)
vspd = lengthdir_y(len,dir)

// Move


//Control sprite
image_speed = sign(len)*0.12;
if (len == 0) image_index = 0;


//Vertical Sprites
if (vspd > 0) {
sprite_index = spr_crusaderDown;
} else if (vspd < 0) {
sprite_index = spr_crusaderUp;
}

//Horizontal Sprites
if (hspd > 0) {
    sprite_index = spr_crusaderRight;
} else if (hspd < 0) {
    sprite_index = spr_crusaderLeft;
}


//AUTOATTACKS
if (attack_key) {
    image_index = 0;
    state = crusaderattack;
    }
//RC ABILITY
if (rc_key) && o_player_stats.mp >= 60 && o_player_stats.rc_cooldown <= 0 {
    with (o_player_stats) {
        mp -= 60;
        rc_cooldown = maxrc_cooldown;
        }
    image_index = 0;
    state = crusaderrepel;
    }
//Q ABILITY
if (q_key) && o_player_stats.mp >= 90 && o_player_stats.q_cooldown <= 0 {
    with (o_player_stats) {
        mp -= 90;
        q_cooldown = maxq_cooldown;
        }
    image_index = 0;
    state = crusaderdenyevil;
    }
//E ABILITY
if (e_key) && o_player_stats.mp >= 40 && o_player_stats.e_cooldown <= 0 {
    with (o_player_stats) {
    e_cooldown = maxe_cooldown;
    mp -= 40;
    
    }
    var shield = instance_create(o_player.x,o_player.y,o_bulwarkaura);
    shield.creator = id;
}




//Check for collision based on the GRID, not SOLID
if (testcheck(x ,y)) {
    phy_position_x = cx*CELL_WIDTH+CELL_WIDTH/2;
    phy_position_y = cy*CELL_HEIGHT+CELL_HEIGHT/2;
    o_player_stats.hp -= o_player_stats.hp*0.1;
    }
if (testcheck(x ,y+3)) {
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
