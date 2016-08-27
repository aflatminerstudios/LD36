///scrBeamMirror(beam, mirror)

var beam = argument0;
var mirror = argument1;

show_debug_message("beam-Mirror Collide");

beam.growing = false;

var newBeam = instance_create(mirror.x, mirror.y, objBeam);

newBeam.length = 1;
newBeam.width = 4;
newBeam.dir = mirror.image_angle;
newBeam.focused = beam.focused;
