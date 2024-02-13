//Global Variables and Objects
Ball myBall; // Both 1/2's of Constructor
Ball yourBall;
//
color pongTableColour = 255; //ERROR: move to Table CLASS, 255 is full BLUE
//
void setup() {
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  /*ScreenSizeChecker() for Lnadscape, Protrait, Square views
   Updated Automatically for screen rotation on Android
   */
  //Population
  myBall = new Ball(); // Both 1/2's of Constructor
  yourBall = new Ball();
  //
} //End setup
//
void draw() {
  background(pongTableColour); //ERROR: Night Mode is know in CLASS, not DRIVER
  myBall.draw();
  yourBall.draw();
  if ( abs(myBall.x-yourBall.x) < ( (myBall.diameter)+(yourBall.diameter) ) || abs(myBall.y-yourBall.y) < ( (myBall.diameter)+(yourBall.diameter) ) ) {
    if ( abs(myBall.x-yourBall.x) < ( (myBall.diameter)+(yourBall.diameter) ) || abs(myBall.y-yourBall.y) < ( (myBall.diameter)+(yourBall.diameter) ) ) ballCollisions();
  }

  println ( myBall.x, yourBall.x, myBall.y, yourBall.y );
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
void ballCollisions() {
  if ( abs(myBall.x-yourBall.x) <= ( (myBall.diameter*1/2)+(yourBall.diameter*1/2) ) ) {
    myBall.xSpeed *= -1;
    yourBall.xSpeed *= -1;
  }
  if ( abs(myBall.y-yourBall.y) <= ( (myBall.diameter*1/2)+(yourBall.diameter*1/2) ) ) {
    myBall.ySpeed *= -1;
    yourBall.ySpeed *= -1;
  }
} //End ball collisions
//
//End DRIVER
