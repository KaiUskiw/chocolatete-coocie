//Global Variables
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean OS_On=false;
//
void setup() {
  size(600, 400);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //Display Algorithm from Hello World
  display();
  //smaller & larger dimension from Dislay Algorithm
  println("Smaller Dimesion is", smallerDimension, "Larger Dimesion is", largerDimension);
   population(); //Values based on DISPLAY
  textSetup();
  }//End setup
 
//
void draw() {
  //Assignemnt #2: OS Level Mouse CLick and Splash Screen
  if ( OS_On==true ) splashScreen(); //OS Level MOUSE Click
  //
}//End draw
//

void keyPressed() {
  //Splash Screen SPACE Bar
  if() splashScreenStart = true;
}//End keyPressed
//
void mousePressed() {
  //OS Level MouseClick
  if ( OS_On==false ) OS_On=true;//End OS Level MouseClick 
}//End mousePressed
//
//End MAIN Program
