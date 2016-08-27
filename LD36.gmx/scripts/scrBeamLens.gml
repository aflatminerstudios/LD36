///scrBeamLens(beam, lens, focused, damage, bounceList, dir)


var beam = argument0;
var lens = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;
var dir = argument5;
var pos = argument6;

///Does it hit the back of the lens?
var diff = angle_difference(dir, lens.image_angle);

if (diff < 90 && diff > -90) {
  var back = true;
} else {
  var back = false;
}

//if(ds_list_find_index(bounceList, lens) == -1) {
if (scrCheckList(bounceList, lens)) {

  var xPos = pos[0] + cos(degtorad(dir));
  var yPos = pos[1] - sin(degtorad(dir));
  
  //Continue along line until no more collision
  while(collision_point(xPos, yPos, objLens, true, false) != noone) {
    xPos = xPos + cos(degtorad(dir));
    yPos = yPos - sin(degtorad(dir));
  }

  var newBeam = instance_create(xPos, yPos, objBeam);
  
  newBeam.length = 1;
  newBeam.width = 4;
  if (back) {
    newBeam.dir = (lens.image_angle + dir) / 2;
  } else {
    newBeam.dir = ((lens.image_angle + dir + 180) / 2);
  }
  newBeam.focused = true;
  newBeam.damage = damage;
  newBeam.bounceList = bounceList;
  ds_list_add(newBeam.bounceList, lens);
  
  show_debug_message("Beam bounce size: " + string(ds_list_size(newBeam.bounceList)));
}
