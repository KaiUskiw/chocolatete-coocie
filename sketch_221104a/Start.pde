//
float quitX, quitY, quitWidth, quitHeight;
float restartX, restartY, restartWidth, restartHeight;
String Start = "START!", Restart = "RESTART!", Quit = "EXIT!";
color S, Q, R, black=#000000, Brown=#904F0D;
void startSquare() {
  fill(S);
  rect(startX, startY, startWidth, startHeight);
  fill(R);
  rect(restartX, restartY, restartWidth, restartHeight);
  //
  //HOVER OVER
  if ( mouseX>startX && mouseX<startX+startWidth && mouseY>startY && mouseY<startY+startHeight ) {
    S = brown; 
    //HINT logical rect: QuitButtonWorks-Boolean TRUE, here
  } else {
    S = black; //Remember Day Mode
  } 
  //
  if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
    Q = brown;
    //HINT logical rect: QuitButtonWorks-Boolean TRUE, here
  } else {
    Q = black; //Remember Day Mode
  }
  //
  if ( mouseX>restartX && mouseX<restartX+restartWidth && mouseY>restartY && mouseY<restartY+restartHeight ) {
    R = brown;
    //HINT logical rect: QuitButtonWorks-Boolean TRUE, here
  } else {
    R = black; //Remember Day Mode
  }
  //
  
  //
}//End startSquare
//
//End Start Square SubProgram
