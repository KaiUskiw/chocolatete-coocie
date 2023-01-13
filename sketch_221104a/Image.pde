PImage backgroundImage, quitButtonImage;
//
void imageSetup() {//Image Population
  backgroundImage=loadImage("../images used/honey badger.jpg");
  //quitButtonImage is loaded here if different
}//End imageSetup
//
void  imageTintNightMode() {
  //Control night mode, colour, with IF 
  //if (nightMode==true) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  //if (nightMode==false) tint(tintDayMode, tintDayModeOpacity);
  if ( nightMode==true ) {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  } else {
    tint(tintDayMode, tintDayModeOpacity);
  }
  }//End imageTintNightMode
  //
void quitButtonImage() {
  quitButtonImage = backgroundImage;
  //
  //Image Dimensions
  float quitButtonImageWidth=1707, quitButtonImageHeight=2560;
  //rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0; 
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Image's largest dimension, Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeight_Calculated = imageHeightRatio * quitButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated );
    //
  } else {//Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidth_Calculated = imageWidthRatio * quitButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Calculated * 1/2;
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted );
    //
  }
}//End quitButtonImage
//
PImage image1, image2, image3, image4, image5, image6, image7, image8, image9;
//
void imagesPopulation() {
  
  image1 = loadImage("../images used/rhino.jpg");
  //
  image2 = loadImage("../images used/elephant.jpg");
  //
  image3 = loadImage("../images used/giaraffe.jpg");
  //
  image4 = loadImage("");
  //
  image5 = loadImage("");
  //
  image6 = loadImage("");
  //
  image7 = loadImage("");
  //
  image8 = loadImage("");
  //
  image9 = loadImage("");
}//End imagePopulation
//
void imageNightMode() {
  //if ( nightMode==false ) tint(tintDayMode, tintDayModeOpacity);//Day mode, see ternary operator
  //if ( nightMode==true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);//Night mode, see ternary operator
  //
  if (nightMode==false) {
    tint(tintDayMode, tintDayModeOpacity);
  } else {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  }
}//End imageNightMode
//End Images SubProgram
//End Image Subprogram
  
