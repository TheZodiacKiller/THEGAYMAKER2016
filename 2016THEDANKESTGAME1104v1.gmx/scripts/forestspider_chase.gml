///forestspider_chase
if (instance_exists(o_player)) {
    phy_position_x += sign(o_player.x - x)*spd;
