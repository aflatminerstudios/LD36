///scrSetupLevel

with (objEnemy) {
  instance_destroy();
}

with (objLensHolder) {
  instance_destroy();
}

with (objMirrorHolder) {
  instance_destroy();
}

with (objMasterControl) {
  //set background
  background_index = level.background;
  
  
  beamsX = level.beamsX;
  beamsY = level.beamsY;
  beamsDir = level.beamsDir;
  
  for (var i = 0; i < array_length_1d(level.lensX); ++i) {
    show_debug_message("Creating lens " + string(i));
    var l = instance_create(level.lensX[i], level.lensY[i], objLensHolder);
    l.initialImageAngle = level.lensAngle[i];
    l.image_angle = l.initialImageAngle;
    l.range = level.lensRange[i];
  }
  
  for (var i = 0; i < array_length_1d(level.mirrorX); ++i) {
    show_debug_message("Creating mirror " + string(i));
    var m = instance_create(level.mirrorX[i], level.mirrorY[i], objMirrorHolder);
    m.initialImageAngle = level.mirrorAngle[i];
    m.image_angle = m.initialImageAngle;
    m.range = level.mirrorRange[i];
  }
  
  
  scrStartRound();

}
