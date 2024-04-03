int appWidth, appHeight;
Boolean displaycheck = false;
//
void display() {
  //Display Orientation: Landscape, not portrait nor square (sort of)
  println(width, height, displayWidth, displayHeight);
  appWidth = displayWidth; //Best Practice: do not manipulate key variables
  appHeight = displayHeight;
  println(displaycheck);
  displaycheck = ( displayWidth >= displayHeight ) ? true : false;
  println(displaycheck);
} //End Display Method
//
void displayLandscape() { //Display ERROR Check in draw()
  println("CAR!!!");
} //End Display Landscape ERROR Check
