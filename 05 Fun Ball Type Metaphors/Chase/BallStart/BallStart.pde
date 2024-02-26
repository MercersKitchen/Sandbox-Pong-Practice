// Global Variables and Objects
Ball ball;

void setup() {
  fullScreen(); //displayWidth & displayHeight  //size(500, 300)
  // Landscape vs. portrait views, leads to screenSize Checker
  ball = new Ball(displayWidth*1/2, displayHeight*1/3, displayWidth*1/8.33333333);
  //
}//End setup()

void draw() {
  ball.draw();
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}
