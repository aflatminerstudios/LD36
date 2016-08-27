///scrBeamMirror(beam, mirror, focused)

var beam = argument0;
var mirror = argument1;
var focused = argument2;
var bounces = argument3;

show_debug_message("beam-Mirror Collide");

show_debug_message("Bounce Count: " + string(bounces));
if(bounces <= MAX_BOUNCES) {
  var newBeam = instance_create(mirror.x, mirror.y, objBeam);
  
  newBeam.length = 1;
  newBeam.width = 4;
  newBeam.dir = mirror.image_angle;
  newBeam.focused = focused;
  newBeam.bounces = bounces + 1;
}
