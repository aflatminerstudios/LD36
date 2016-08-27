///scrStartRound()

with (objMasterControl) {

  //Start timeline
  timeline_index = level.timeline[roundNum];
  if (!timeline_running) {
    timeline_index = 0;
    timeline_running = true;
  }
  
}
