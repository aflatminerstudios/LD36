///scrMermanAttack(attacker)

var attacker = argument0;

show_debug_message("Merman attacking");

// Find nearest target
if (instance_number(objFort) >= 1) {
  var target = instance_nearest(attacker.x, attacker.y, objFort);
  var targetDir = point_direction(attacker.x, attacker.y, target.x, target.y);
  
  var trident = instance_create(attacker.x, attacker.y - attacker.sprite_height/2 - 12, objTrident);
  
  trident.damage = attacker.attackValue;
  trident.targetInstance = target;
  trident.projectileSpeed = 10;
  trident.image_angle = targetDir;
  trident.depth = attacker.depth - 100;
}
