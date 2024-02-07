//Global Variables
//
void setup() {
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  /*ScreenSizeChecker() for Lnadscape, Protrait, Square views
   Updated Automatically for screen rotation on Android
   */
  Ball myBall = new Ball(); // Line = 1/2 of Constructor
  int startX = width*1/2;
  int startY = height*1/2;
  int referentMeasure = ( width < height ) ? width : height ; //Review Ternary Operator
  myBall.x = startX; //spawn myBall in the middle of the display
  myBall.y = startY;
  myBall.diameter = 
  //ellipse(x, y, diameter, diameter); //ball
  //What if?
  //Ball yourBall = new Ball();
  //yourBall.x =
  //
} //End setup
//
void draw() {
  //EMPTY Loop
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End DRIVER
