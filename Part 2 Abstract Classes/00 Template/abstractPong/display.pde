int appWidth, appHeight;
Boolean displaycheck = false;
//
void display() {
  //Display Orientation: Landscape, not portrait nor square (sort of)
  println(width, height, displayWidth, displayHeight);
  appWidth = width; //Best Practice: do not manipulate key variables
  appHeight = height;
  println(displaycheck);
  displaycheck = ( appWidth >= appHeight ) ? false : true ;
  println(displaycheck);
} //End Display Method
//
void displayLandscape() { //Display ERROR Check in draw()
  println("CAR!!!"); //Developer ONLY Notification
  //Add text, image, sounds, etc. to the CANVAS telling Gamer, not developer
} //End Display Landscape ERROR Check
