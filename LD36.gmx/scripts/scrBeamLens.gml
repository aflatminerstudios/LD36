///scrBeamMirror(beam, lens)

show_debug_message("beam-Lens Collide");

var beam = argument0;
var lens = argument1;

beam.growing = false;

var newBeam = instance_create(lens.x, lens.y, objBeam);

newBeam.length = 1;
newBeam.width = 4;
newBeam.dir = lens.image_angle;
newBeam.focused = true;
