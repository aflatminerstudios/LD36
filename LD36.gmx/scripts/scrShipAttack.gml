/// scrShipAttack


var thisEnemy = argument0;

show_debug_message("Ship attack.");
var fireX = x + irandom(40) - 20;
var fireY = y+20;
var cannonSmoke = instance_create(fireX, fireY, objCannonSmoke);
cannonSmoke.depth = thisEnemy.depth - 100;

// Find nearest target
if (instance_number(objFort) >= 1) {
  var target = instance_nearest(x, y, objFort);
  var cannonball = instance_create(fireX, fireY, objCannonball);
  cannonball.damage = 5;
  cannonball.targetInstance = target;
  projectileSpeed = 12; // pixels per frame

  cannonball.depth = cannonSmoke.depth + 1
}
