///scrBeamEnemy(beam, enemy, focused, damage, bounceList, dir)

var beam = argument0;
var enemy = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;
var dir = argument5;

enemy.hp -= damage;
/*enemy.flashing = true;
enemy.alarm[11] = room_speed / 2;
if (enemy.alarm[10] <= 0) {
  enemy.alarm[10] = enemy.flashWait;
}*/

if (enemy.hp <= 0) {

  score += enemy.value;

  with (enemy) {
    instance_create(x, y, objExplosion);
    instance_destroy();
  }
}
