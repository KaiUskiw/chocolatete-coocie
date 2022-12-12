float  backgroundX, backgroundY, backgroundWidth, backgroundHeight;
//
void homeScreen() {
  println("Arrived at Home Screen");//Testing For SplashScreenStart Button Working
  /* Home Screen Expectations
  - Background Image using tint
  - 9 evenly spaced rectangles
  - Quit Butto and Reset Button (Splash Screen Start Button)
  - in each: image, text, 2D shape, Button
  - Narrative through the 9 rects
  - See Case Study
  - Note: must have one image with aspect ratio
  */
  //
}//End homeScreen
//
void backgroundWhiteScreen(){
 fill(white);
 noStroke();
 rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight); //White colour
 stroke(1); //Reset: 1 pixel
 fill(white); //Reset: white
}//End backgroundWhiteScreen 
//
void backgroundImage() {
  backgroundWhiteScreen();
  //image with Tint
}//End backgroundImage
//
//End Home Screen Subprogram
