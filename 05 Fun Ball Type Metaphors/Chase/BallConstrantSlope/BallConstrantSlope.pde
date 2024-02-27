// Global Variables and Objects
Ball ball;
int appWidth, appHeight, smallerDimension;
//
void setup() {
  size(600, 400); //fullScreen(); //displayWidth & displayHeight
  appWidth = width;
  appHeight = height;
  smallerDimension = ( appWidth <= appHeight ) ? appWidth : appHeight;
  // Landscape vs. portrait views, leads to screenSize Checker
  ball = new Ball(appWidth*1/2, appHeight*1/3, smallerDimension*1/8.33333333);
  //
}//End setup()

void draw() {
  ball.step();
  ball.draw();
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
  ball.targetX = mouseX;
  ball.targetY = mouseY;
}
