///scrBeamMirror(beam, mirror, focused, damage, bounceList)

var beam = argument0;
var mirror = argument1;
var focused = argument2;
var damage = argument3;
var bounceList = argument4;

if(ds_list_find_index(bounceList, mirror) == -1) {
  var newBeam = instance_create(mirror.x, mirror.y, objBeam);
  
  newBeam.length = 1;
  newBeam.width = 4;
  newBeam.dir = mirror.image_angle;
  newBeam.focused = focused;
  newBeam.damage = damage;
  newBeam.bounceList = bounceList;
  ds_list_add(newBeam.bounceList, mirror);
}
