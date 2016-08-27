///scrBeamMirror(beam, lens)

var beam = argument0;
var mirror = argument1;

beam.growing = false;

var newBeam = instance_create(lens.x, lens.y, objBeam);

newBeam.length = 1;
newBeam.width = 4;
newBeam.dir = lens.image_angle;
newBeam.focused = true;
