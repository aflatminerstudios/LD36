///scrEndRound()

with (objMasterControl) {
  roundNum++;
  
  if (array_length_1d(level.timeline) >= roundNum) {
    show_message("Problem! The level is over and I don't have anything to do yet!");
    scrGameOver();
  } 
}
