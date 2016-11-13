///assassinmaelstorm

    image_speed = 0.45;
var dir = point_direction(x,y,mouse_x,mouse_y);
//If sprite index is equal to a case, do something
if dir < 45 && dir > 0 || dir > 315 && dir < 360   
    sprite_index = spr_assassinAttRight;



if dir < 135 && dir > 45
    sprite_index = spr_assassinAttUp;


if dir > 135 && dir < 225
    sprite_index = spr_assassinAttLeft;



if dir < 315 && dir > 225
    sprite_index = spr_assassinAttDown;


if a1 == false && image_index >= 0 {
    a1 = true;
    var a = instance_create(mouse_x,mouse_y,o_maelstorm);
    a.creator = id;
}
 if instance_exists(o_shadowpartner) && a2 == false && image_index >= 4 {
        var b = instance_create(mouse_x,mouse_y,o_shadowmaelstorm);
        b.creator = id;
        a2 = true;
        }


