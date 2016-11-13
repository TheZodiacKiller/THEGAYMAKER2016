///scr_attack_state_one

image_speed = 0.35;
var dir = point_direction(x,y,mouse_x,mouse_y)
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_crusaderrepelRight;



if dir < 135 && dir > 45
    sprite_index = spr_crusaderrepelUp;


if dir > 135 && dir < 225
    sprite_index = spr_crusaderrepelLeft;



if dir < 315 && dir > 225
    sprite_index = spr_crusaderrepelDown;
    
    
if image_index >= 1 && repel == false {
var xx = 0;
var yy = 0;
switch (sprite_index) {
    case spr_crusaderrepelRight:
        xx = x+16;
        yy = y;
        var damage = instance_create(xx, yy, o_repelright);
        break;
    
    case spr_crusaderrepelLeft:
        xx = x-16;
        yy = y;
        var damage = instance_create(xx, yy, o_repelleft);
    break;
    
    case spr_crusaderrepelUp:
        xx = x;
        yy = y-16;
        var damage = instance_create(xx, yy, o_repelup);
    break;
    
    case spr_crusaderrepelDown:
        xx = x;
        yy = y+16;
        var damage = instance_create(xx, yy, o_repeldown);
    break;

}
    
    //Tells the damage object that THE PLAYER (id) is the creator
    damage.creator = id;
    repel = true;
}

