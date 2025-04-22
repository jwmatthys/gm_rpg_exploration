if (instance_exists(obj_dialogue)) exit
    
var _horiz = clamp(target_x - x, -1, 1)
var _vert = clamp(target_y - y, -1, 1)

move_and_collide(_horiz * move_speed, _vert * move_speed, [tilemap, obj_enemy_parent])

if (hp <= 0)
{
    instance_destroy()
    obj_player.add_xp(xp_value)
}