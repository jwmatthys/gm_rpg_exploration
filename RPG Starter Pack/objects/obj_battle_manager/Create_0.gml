enemy_turn = 0
damage_to_enemy = 0

player_attack = function (_damage)
{
    damage_to_enemy = _damage
    enemy_turn = 1
    alarm[0] = 40
    
    obj_battle_player.alarm[0] = 10
}

check_for_end = function ()
{
    //show_debug_message("Player HP: {0}, Enemy HP: {1}", obj_battle_player.data.hp, obj_battle_enemy.data.hp)
    return (obj_battle_enemy.data.hp <= 0 || obj_battle_player.data.hp <= 0)
}