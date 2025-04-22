if (instance_exists(obj_dialogue)) exit

var _horiz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var  _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if (_horiz != 0 or _vert != 0)
{
    var normalized_speed = move_speed
    if (_horiz != 0 and _vert != 0) normalized_speed = move_speed / const_sqrt2

    move_and_collide(_horiz * normalized_speed, _vert * normalized_speed, tilemap, undefined, undefined, undefined, normalized_speed, normalized_speed)

    if (_vert > 0) sprite_index = spr_player_walk_down
	else if (_vert < 0) sprite_index = spr_player_walk_up
	else if (_horiz > 0) sprite_index = spr_player_walk_right
	else if (_horiz < 0) sprite_index = spr_player_walk_left 
}
else {
	if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right 
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left
	else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up
  	else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down
}

if (hp <= 0) game_restart()