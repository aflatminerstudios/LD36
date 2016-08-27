///scrCalcMouseDist(prevX, prevY, mouseX, mouseY, initialAngle)

var prevX = argument0;
var prevY = argument1;
var mouseX = argument2;
var mouseY = argument3;
var initialAngle = argument4;

var dist = 0;
if (initialAngle <= 90 || initialAngle > 270) {
  dist += prevY - mouseY;
} else {
  dist -= prevY - mouseY;
}

if (initialAngle <= 180) {
  dist += prevX - mouseX;
} else {
  dist -= prevX - mouseX;
}

  



return dist;  
  
