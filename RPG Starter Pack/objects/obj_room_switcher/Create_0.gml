if (instance_exists(obj_player))
{
    player_data = {
        hp : obj_player.hp,
        hp_total : obj_player.hp_total,
        damage : obj_player.damage,
        charge : obj_player.charge,
        max_charge : obj_player.max_charge,
        level : obj_player.level,
        xp : obj_player.xp,
        xp_require : obj_player.xp_require
    }
}