var _enemy_damage = obj_battle_enemy.data.damage * random_range(0.7, 1.2)
obj_battle_player.data.hp -= _enemy_damage
obj_battle_player.data.charge += _enemy_damage
if (obj_battle_player.data.charge > obj_battle_player.data.max_charge) obj_battle_player.data.charge = obj_battle_player.data.max_charge

enemy_turn = 0

if (check_for_end()) alarm[2] = 60