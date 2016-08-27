///scrCalcMouseDist(prevX, prevY, mouseX, mouseY, initialAngle, clickAngle)

var prevX = argument0;
var prevY = argument1;
var mouseX = argument2;
var mouseY = argument3;
var initialAngle = argument4;
var clickAngle = argument5;

var dist = 0;

//show_debug_message(clickAngle);


if (clickAngle <= 60 || clickAngle >= 300) {
  dist += prevY - mouseY;  
} else if (clickAngle > 60 && clickAngle < 120) {
  dist += prevX - mouseX;  
} else if (clickAngle  >= 120 && clickAngle <= 240) {
  dist -= prevY - mouseY;
} else {
  dist -= prevX - mouseX;
}

/*

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

*/  



return dist;  
  
