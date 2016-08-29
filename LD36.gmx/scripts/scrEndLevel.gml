///scrEndLevel()

with (objMasterControl) {
  
  levelNum++;
  
  
  if (array_length_1d(levelObjects) <= levelNum) {   
    //alarm[2] = room_speed;
    levelNum = 0;
  } // else {
    alarm[1] = room_speed;
//  }

}
