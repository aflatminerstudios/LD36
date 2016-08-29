///scrEndRound()

with (objMasterControl) {
  roundNum++;

  show_debug_message("Round: " + string(roundNum));
  show_debug_message("Length: " + string(array_length_1d(level.timeline)));
  roundEnding = false;
  
  if (array_length_1d(level.timeline) <= roundNum) {    
    scrEndLevel();  
  }  else {
    //Start new round in 1 second
    alarm[0] = room_speed;    
  }
}
