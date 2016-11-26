///Elron A1
image_speed = .8;
sprite_index = spr_elronA;
//Push player based on image_xscale
if (image_index > 14)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    var force = 30;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
}
//Summon hitbox
var xx = 0;
var yy = 0;
if image_index >= 14 && att == false {
    
    
    var a = instance_create(x,y,o_elronAslash);
        if att == false {
        a.creator = id;
            if image_xscale == 1 {
                a.direction = point_direction(x,y,x+1,y);
                a.image_xscale = 1;
                }
            if image_xscale == -1 {
                a.direction = point_direction(x,y,x-1,y);
                a.image_xscale = -1;
                }
            a.phy_speed_x = lengthdir_x(4,a.direction);
        }
        att = true;
        
        
   
     }

if a3_key && instance_exists(o_elronultsigil) {
    o_elronultsigil.trigger = true;
    image_index = 14;
    
    }
