///fire_elementalattack
if instance_exists(o_player) && instance_exists(target) {


//Control sprite
image_speed = 0.12;
if (target.x < x) 
sprite_index = spr_fireelementalAttLeft;
if (target.x > x) 
sprite_index = spr_fireelementalAttRight;
    




if att == false && image_index >= 6 {
    
    var a = instance_create(x, y, o_firebulletmini);
    a.direction = point_direction(x,y,target.x,target.y);
    a.phy_speed_x = lengthdir_x(3,a.direction + irandom_range(4,-4));
    a.phy_speed_y = lengthdir_y(3,a.direction + irandom_range(4,-4));
    a.phy_rotation = -point_direction(x, y, target.x, target.y);
    att = true;
    a.creator = id;
}

}
