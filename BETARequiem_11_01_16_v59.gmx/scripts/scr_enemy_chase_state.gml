///scr_enemy_chase_state
scr_check_for_player();
var dir = point_direction (x, y, targetx, targety);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

//X
if ((Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] = FLOOR) &&
   (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] = FLOOR)) ||
   ((Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] = FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] = FLOOR))
{
    phy_position_x += hspd*4
}
if ((Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) &&
   (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR)) ||
   ((Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR))
   
{
    phy_position_x -= hspd*10
}

//Y
if ((Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] = FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] = FLOOR)) ||
   ((Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] = FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] = FLOOR))
{
    phy_position_y += vspd*4
}
if ((Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR)) ||
   ((Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) &&
   (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR))
{
    phy_position_y -= vspd*10
}


