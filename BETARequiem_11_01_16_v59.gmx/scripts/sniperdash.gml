var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;
var cx = width div 2;
var cy = height div 2;
///sniperdash(hspd, vspd)
scr_get_attackinput();
len = spd*2.5;
var dir = point_direction(x, y, mouse_x, mouse_y);

//Get hspd and vspd
hspd = -lengthdir_x(len,dir)
vspd = -lengthdir_y(len,dir)

// Move


//Control sprite
image_speed = sign(len)*0.12;
if (len == 0) image_index = 0;


//Vertical Sprites
if (vspd > 0) {
sprite_index = spr_sniperUp;
} else if (vspd < 0) {
sprite_index = spr_sniperDown;
}

//Horizontal Sprites
if (hspd > 0) {
    sprite_index = spr_sniperLeft;
} else if (hspd < 0) {
    sprite_index = spr_sniperRight;
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

//Create dash effect
var d = instance_create(x,y,o_dasheffect);
d.sprite_index = sprite_index;
d.image_index = image_index;
