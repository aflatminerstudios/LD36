///scrBeamMirror(beam, mirror, focused, damage, bounceList, dir, pos)

var beam = argument0;
var mirror = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;
var dir = argument5;
var pos = argument6;

///Does it hit the back of the mirror?
var diff = angle_difference(dir, mirror.image_angle);
if (diff > 90 && diff < -90) {
  var back = true;
} else {
  var back = false;
}

//if(ds_list_find_index(bounceList, mirror) == -1) {
if (scrCheckList(bounceList) && !back) {
  var newBeam = instance_create(pos[0], pos[1], objBeam);
  
  newBeam.length = 1;
  newBeam.width = 4;
  
  var xDiff = pos[0] - mirror.x;
  var yDiff = pos[1] - mirror.y;
  var distToMiddle = sqrt((xDiff * xDiff) + (yDiff * yDiff));
  
  newBeam.dir = mirror.image_angle;//dir - (sign(diff) * 90);
  newBeam.focused = focused;
  newBeam.damage = damage;
  newBeam.bounceList = bounceList;
  ds_list_add(newBeam.bounceList, mirror);
}
