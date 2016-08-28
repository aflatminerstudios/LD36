///scrStartRound()

with (objMasterControl) {
  show_debug_message("Starting round: " + string(roundNum));
  //Start timeline
  timeline_index = level.timeline[roundNum];
  if (!timeline_running) {
    timeline_position = 0;
    timeline_running = true;
  }
  roundEnding = false;
}
