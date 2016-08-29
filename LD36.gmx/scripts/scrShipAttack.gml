/// scrShipAttack


var thisEnemy = argument0;

show_debug_message("Ship attack.");
var xOffset = irandom(40) - 20;
var cannonSmoke = instance_create(x+xOffset, y+20, objCannonSmoke);
cannonSmoke.depth = thisEnemy.depth - 100;
scrBasicAttack(thisEnemy);
