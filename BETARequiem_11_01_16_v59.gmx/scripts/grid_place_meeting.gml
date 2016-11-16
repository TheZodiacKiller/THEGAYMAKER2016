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

///Checks if player's CORNERS would touch the VOID or WALL
//Check for horizontal (x) meeting, determining whether there is a floor tile in an area or not
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

//Check for vertical (y) meeting
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || 
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

//Extra code to increase safety on collision                
//Checks center for (xy) meeting

                


//After checking for collison, move player back to floor if player collides through a wall
x = xp;
y = yp;

//Return value (TRUE/FALSE) based on whether a collision was made
return x_meeting || y_meeting;
