///scrBeamEnemy(beam, enemy, focused, damage, bounceList, dir, pos)

var beam = argument0;
var enemy = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;
var dir = argument5;
var pos = argument6;

enemy.hp -= damage;
var smoke = instance_create(pos[0], pos[1], objLaserSmoke);
smoke.depth = enemy.depth - 1;

if (instance_number(objGameOverReport) <= 0) {
  audio_play_sound(choose(sndLaserHit, sndLaserHit2, sndLaserHit3), 0, false);
}
/*enemy.flashing = true;
enemy.alarm[11] = room_speed / 2;
if (enemy.alarm[10] <= 0) {
  enemy.alarm[10] = enemy.flashWait;
}*/

if (enemy.hp <= 0) {

  score += enemy.value;

  with (enemy) {
    instance_create(x, y, objExplosion);
    audio_play_sound(destructionSound, 0, false);
    instance_destroy();
  }
}
