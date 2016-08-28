///scrBasicAttack(attacker)

var attacker = argument0;

if (instance_number(objFort) >= 1) {

  var target = instance_nearest(attacker.x, attacker.y, objFort);
  
  target.currentHP -= attacker.attackValue;
}



