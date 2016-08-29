/// scrDamageTarget(targetInstance, damage)

var targetInstance = argument0;
var damage = argument1;

if (instance_exists(targetInstance)) {

  targetInstance.currentHP -= damage;

}
