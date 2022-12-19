void display() {
//Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in monitor
  //Output #2: Console confirms display orientation (landscape-square or portriat)
  //Output #3: Console confirms dimension sizes (smaller and larger)
  //Output #4: if error with any of above, program will exit or be broken
  //           Hint: "Bru, turn your phun."
  //
  if (appWidth>=appHeight) {
    largerDimension = appWidth;
    smallerDimension = appHeight;
  } else {
    largerDimension = appHeight;
    smallerDimension = appWidth;
  }
  //
   println("CANVAS:", "Width:"+width, "Height="+height);
  println("Display Monitor:", "Width:"+displayWidth, "Height:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ;
  println(DO, orientation);
  if (orientation == p ) println(instruct);
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  println("Smaller Dimension:", smallerDimension);
  println("Larger Dimension:", largerDimension);
}//End display
//
//End Display Orientation Subprogram
