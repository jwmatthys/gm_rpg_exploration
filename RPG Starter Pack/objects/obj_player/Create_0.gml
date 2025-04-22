move_speed = 1
tilemap = layer_tilemap_get_id("tiles_col")
const_sqrt2 = sqrt(2)
hp = 10
hp_total = hp
damage = 1
charge = 0
max_charge = 2
level = 1
xp = 0
xp_require = 100

if (instance_exists(obj_room_switcher))
{
    show_debug_message("copying data from switcher")
    show_debug_message($"xp: {obj_room_switcher.player_data.xp}, level: {obj_room_switcher.player_data.level}")
    hp = obj_room_switcher.player_data.hp
    hp_total = obj_room_switcher.player_data.hp_total
    damage = obj_room_switcher.player_data.damage
    charge = obj_room_switcher.player_data.charge
    max_charge = obj_room_switcher.player_data.max_charge
    level = obj_room_switcher.player_data.level
    xp = obj_room_switcher.player_data.xp
    xp_require = obj_room_switcher.player_data.xp_require
    instance_destroy(obj_room_switcher)
}

function add_xp(_xp_to_add)
{
    xp += _xp_to_add
    if (xp >= xp_require)
    {
        level++;
        xp -= xp_require
        xp_require *= 1.4
        
        hp_total += 5
        hp = hp_total
        damage *= 1.8
        create_dialog([
        {
            name: "Congrats",
            msg: $"You leveled up! Your new stats are:\nLVL: {level}\nHP: {hp}\nDamage: {damage}"
        }])
    }
}