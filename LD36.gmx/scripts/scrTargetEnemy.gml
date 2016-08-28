///scrTargetEnemy(enemy, targetX, targetY, speed)

var enemy = argument0;
var targetX = argument1;
var targetY = argument2;
var spd = argument3;

//Set target
enemy.moveEndX = targetX;
enemy.moveEndY = targetY;

//Get direction to go
//var moveDir =  point_direction(enemy.x, enemy.y, targetX, targetY);

var vx = targetX - enemy.x;
var vy = targetY - enemy.y;

//get distance
var dist = sqrt(vx*vx + vy*vy);

//normalize
vx = vx / dist;
vy = vy / dist;

enemy.moveSpeedX = vx * spd;
enemy.moveSpeedY = vy * spd;


