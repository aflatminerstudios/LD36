///scrEndLevel()

with (objMasterControl) {
  levelNum++;
  
  if (array_length_1d(levelObjects) >= levelNum) {
    wonGame = true;
    scrGameOver();
  }  else {
    scrSetupLevel();
  }
}
