//Global Variables and Objects
Ball myBall;
Ball[] fireworks = new Firework[25];
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
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework();
  }
  
  //
} //End setup
//
void draw() {
  background(pongTableColour); //ERROR: Night Mode is know in CLASS, not DRIVER
  myBall.draw();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework();
  }
} //End mousePressed
//
//End DRIVER
