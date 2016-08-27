///scrBeamLens(beam, lens, focused, bounces)

show_debug_message("beam-Lens Collide");

var beam = argument0;
var lens = argument1;
var focused = argument2;
var bounces = argument3;

if(bounces <= MAX_BOUNCES) {
  var newBeam = instance_create(lens.x, lens.y, objBeam);
  
  newBeam.length = 1;
  newBeam.width = 4;
  newBeam.dir = lens.image_angle;
  newBeam.focused = true;
  newBeam.bounces = bounces + 1;
}
