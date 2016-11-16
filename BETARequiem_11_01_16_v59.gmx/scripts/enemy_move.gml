///enemy_move(hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

//Check for collision based on the GRID, not SOLID
//Horizontal Collision
if (grid_place_meeting_enemy(x+hspd, y)) {
    while (!grid_place_meeting_enemy(x+sign(hspd), y)) {
        x += sign (hspd);
        } 
    hspd = 0;
}


//Horizontal Movement
x+=hspd;

//Vertical Collision
if (grid_place_meeting_enemy(x, y+vspd)) {
    while(!grid_place_meeting_enemy(x, y+sign(vspd))) {
        y+=sign(vspd);
        }
    vspd = 0;
}

//Vertical Movement
y+=vspd;
