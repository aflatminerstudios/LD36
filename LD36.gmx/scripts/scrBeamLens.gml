///scrBeamLens(beam, lens, focused, damage, bounceList, dir, pos, width, focusNum)


var beam = argument0;
var lens = argument1;
var focused = argument2;
var damage = argument3;
/*var bounceList = ds_list_create();
ds_list_copy(bounceList, argument4);*/
var bounceList = argument4;
var dir = argument5;
var pos = argument6;
var width = argument7;
var focusNum = argument8;


while (dir < 0) {
  dir += 360;
}

///Does it hit the back of the lens?
var diff = angle_difference(dir, lens.image_angle);

if (diff < 90 && diff > -90) {
  var back = true;
} else {
  var back = false;
}

//if(ds_list_find_index(bounceList, lens) == -1) {
if (scrCheckList(bounceList, lens)) {

  //Handle going across the 0
  var diff = lens.image_angle - dir;
  if (abs(diff) > 180 && back) {
    var m = max(lens.image_angle, dir);
    if (m == dir) {
      dir -= 360;
    } else { 
      lens.image_angle -= 360;
    }
  }

  if (back) {    
    var newDir = (lens.image_angle + dir) / 2;  
  } else {
    var newDir = ((lens.image_angle + dir - 180) / 2);
  }


  var xPos = pos[0] + cos(degtorad(newDir));
  var yPos = pos[1] - sin(degtorad(newDir));
  
  //Continue along line until no more collision
  while(collision_point(xPos, yPos, objLens, true, false) != noone) {
    xPos = xPos + cos(degtorad(newDir));
    yPos = yPos - sin(degtorad(newDir));
  }

  xPos = xPos + cos(degtorad(newDir));
  yPos = yPos - sin(degtorad(newDir));
  
  var newBeam = instance_create(xPos, yPos, objBeam);
  
  newBeam.length = 1;
  newBeam.width = width;
  
  newBeam.dir = newDir;
  
  newBeam.focused = true;
  newBeam.damage = power(1.5, focusNum) * damage;

  newBeam.bounceList = bounceList;
  newBeam.focusNum = focusNum + 1;  
  newBeam.beamParent = lens;
    
  ds_list_add(newBeam.bounceList, lens);
  
}
