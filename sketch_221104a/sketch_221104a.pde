//To Do, add the printlns to verify the values
//Algorithm works when image is bigger than the CANVAS, not smaller
//Different Algorithm is necessary - work to get above 65%
//
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
float picWidthAdjusted4=0.0, picHeightAdjusted4=0.0;
float picWidthAdjusted5=0.0, picHeightAdjusted5=0.0;
float picWidthAdjusted6=0.0, picHeightAdjusted6=0.0;
float picWidthAdjusted7=0.0, picHeightAdjusted7=0.0;
float picWidthAdjusted8=0.0, picHeightAdjusted8=0.0;
float picWidthAdjusted9=0.0, picHeightAdjusted9=0.0;
PImage pic, pic2, pic3, pic4, pic5, pic6, pic7, pic8, pic9;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(1000, 1000); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //baboon.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth = 333; 
  int picHeight = 333;
  int picWidth2 = 333; 
  int picHeight2 = 333; 
  int picWidth3 = 333; 
  int picHeight3 = 333;
  int picWidth4 = 333; 
  int picHeight4 = 333;
  int picWidth5 = 333; 
  int picHeight5 = 333; 
  int picWidth6 = 333; 
  int picHeight6 = 333;
  int picWidth7 = 333; 
  int picHeight7 = 333;
  int picWidth8 = 333; 
  int picHeight8 = 333; 
  int picWidth9 = 333; 
  int picHeight9 = 333;
  //
  //Image Orientation: Landscape, Square, Portrait
  float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float smallerDimension3, largerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
   float smallerDimension4, largerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
  float smallerDimension5, largerDimension5, imageWidthRatio5=0.0, imageHeightRatio5=0.0;
  float smallerDimension6, largerDimension6, imageWidthRatio6=0.0, imageHeightRatio6=0.0;
  Boolean widthLarger=false, heightLarger=false, widthLarger2=false, heightLarger2=false, widthLarger3=false, heightLarger3=false,
  widthLarger4=false, heightLarger4=false, widthLarger5=false, heightLarger5=false, widthLarger6=false, heightLarger6=false,
  widthLarger7=false, heightLarger7=false, widthLarger8=false, heightLarger8=false, widthLarger9=false, heightLarger9=false;
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  //Teaching Example: width is known to be larger
  //Better Image Stretch Algorithm
  if ( appWidth >= picWidth ) {
    picWidthAdjusted1 = appWidth; //Stretching larger dimension
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      //Calculated Dimension b/c smaller than width
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio;
      if ( appHeight < picHeightAdjusted1 ) {
        println("STOP: image is too big for CANVAS");
        exit(); //stop further use of the APP
      }
    } else {
      //Image smaller than CANVAS needs separate algorithm
      println("CANVAS is smaller than Image");
    }
  } else {
    //Image smaller than CANVAS, needs separate algorithm
    println("CANVAS is smaller than Image");
  }
  //
  //Population
  pic = loadImage("../images used/honey badger.jpg");
  pic2 = loadImage("../images used/hyena.jfif");
  pic3 = loadImage("../images used/giaraffe.jfif");
  pic4 = loadImage("../images used/rhino.jfif");
  pic5 = loadImage("../images used/elephant.jfif");
  pic6 = loadImage("../images used/wildebeest.jfif");
  pic7 = loadImage("../images used/tiger.jfif");
  pic8 = loadImage("../images used/hippo.jfif");
  pic9 = loadImage("../images used/lion.jfif");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topX = appWidth * 1/4;
  topY = appHeight * 5/20;
  topWidth = appWidth * 1/2;
  topHeight = appHeight * 9/20;
  bottomX = appWidth *1/2;
  bottomY = appHeight * 3/4;
  bottomWidth = appWidth * 3/4;
  bottomHeight = appHeight * 4/20;
  //
  //Verify Variable Values after Algorithm
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Image dimensions are:", picWidth, picHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted1, picHeightAdjusted1);
  //
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topX, topY, topWidth, topHeight );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
  //
  //Algorithm uses rect-variables
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    widthLarger2 = true;
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted2 = topWidth; //stretch or reduce
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    println("here", picWidthAdjusted2, picHeightAdjusted2);
    if ( picHeightAdjusted2 > topHeight ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    heightLarger2 = true;
    //Portrait Image larger image to smaller rectangle (or larger)
    //Students to create
  }
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
}//End setup
//
void draw()
{
  image(pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2);
  image(pic3, bottomX, bottomY, picWidthAdjusted3, picHeightAdjusted3);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //  
  //Mouse Pressed will control background image
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
