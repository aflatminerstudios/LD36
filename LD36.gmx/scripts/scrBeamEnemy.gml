///scrBeamEnemy(beam, enemy, focused, damage, bounceList)

show_debug_message("beam-Enemy Collide");

var beam = argument0;
var enemy = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;

enemy.hp -= damage;


if (enemy.hp <= 0) {

  score += enemy.value;

  with (enemy) {
    instance_destroy();
  }
}
