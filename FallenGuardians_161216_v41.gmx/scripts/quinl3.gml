///Quin L3
image_speed = .3;
sprite_index = spr_quinL3;
//Push player based on image_xscale
if (image_index < 9)  {
    if (image_xscale == 1)
        var pdir = point_direction(x, y, x+1, y);
    if image_xscale == -1
        var pdir = point_direction(x, y, x-1, y);
    var force = 20;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);
    physics_apply_force(x, y, vx, vy);
}
//Summon hitbox
var xx = 0;
var yy = 0;

    if (image_index >= 3) && (att == false) {
        att = true;
        switch (image_xscale) {
            case 1:
                xx = x+16;
                yy = y;
                break;
            case -1:
                xx = x-16;
                yy = y;
                break;
                }
        var a = instance_create(xx,yy,o_quinhitbox);
        a.creator = id;
        
        }

//Avalability of next attack after x frames.
if image_index >= 10 && (ha_key) {
    att = false;
    image_index = 0;
    state = quinh1;
    }

