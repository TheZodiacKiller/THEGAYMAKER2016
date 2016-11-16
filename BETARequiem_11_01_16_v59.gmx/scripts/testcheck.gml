//testcheck

///grid_place_meeting(x, y)
var xx = argument[0];
var yy = argument[1];

//Remembers the position of the player
var xp = x;
var yp = y;

//bbox_DIRECTION is the edges of an object
//Update the position for bbox calculation
x = xx;
y = yy;
                
var center_meeting = Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;

//After checking for collison, move player back to floor if player collides through a wall
x = xp;
y = yp;

//Return value (TRUE/FALSE) based on whether a collision was made
return center_meeting;
