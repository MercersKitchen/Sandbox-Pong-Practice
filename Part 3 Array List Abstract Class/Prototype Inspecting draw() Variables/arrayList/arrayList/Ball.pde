class Ball extends Circle {
  //Local Variables to Ball in Shape, will be deleted
  //Global Variables to Ball
  float pongTableTopY, pongTableBottomY, pongTableX_Middle;
  float leftPaddleTop, leftPaddleBottom, rightPaddleTop, rightPaddleBottom;
  float xSpeed, ySpeed, xSpeedChange, ySpeedChange;
  //
  Ball(float x, float y, float w, float h, float el, float er, float tl, float tr, Boolean s, color c) {
    super(x, y, w, h, el, er, tl, tr, s, c);
  } //End Ball
  //
  //Methods
  //
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
    //
    if ( s==false && ( x>el && x<er ) ) { //Logical Short Circuit Boolean, !=
      move(); //regular movement, ELSE IF ignored
    } else if ( x <= tl || x<=el) { // <= & >= creates clear binary boundary
      x = tl+w; //unseen decimals in a float cause the x-value to break free
      s=true;
    } else if ( x >= tr || x>=er) {
      x = tr-w; //NOTE: int() can block unseen decimals if no clear boundary
      s=true;
    }
    //
} //End Draw
//
color backgroundColour() {
  color nm = 0;
  return nm;
} //End Night Mode Colour Selector
//
void move() {
  bounce();
  x += xSpeed * xSpeedChange;
  y += ySpeed * ySpeedChange;
} //End Move Ball
//
/* Features
 - Ball in net triggers FIREWORKS
 */
//
// Getters & Setters
void updateSetup( float topParameter, float bottomParameter, float middleParameter, float leftPaddleEdge, float rightPaddleEdge, float leftPaddleTopParameter, float leftPaddleBottomParameter, float rightPaddleTopParameter, float rightPaddleBottomParameter ) {
  pongTableTopY = topParameter;
  pongTableBottomY = bottomParameter;
  pongTableX_Middle = middleParameter;
  el = leftPaddleEdge; //Left Paddle X Bounce Line
  er = rightPaddleEdge; //Right Paddles X Bounce Line
  paddleUpdate(leftPaddleTopParameter, leftPaddleBottomParameter, rightPaddleTopParameter, rightPaddleBottomParameter); //Executes Only Once in setup()
  //
  //For Moving the Ball
  xSpeed = xDirection(); //float, could be any number
  ySpeed = yDirection(); //float, could be any number
  //ERROR: random() will choose ZERO, not only -1 & 1
  xSpeedChange = 1; //Break bounce physisc
  ySpeedChange = 1; //Change speeds
} //End Pong Table Update
//for setup() & draw()
void paddleUpdate( float leftPaddleTopParameter, float leftPaddleBottomParameter, float rightPaddleTopParameter, float rightPaddleBottomParameter ) {
  leftPaddleTop = leftPaddleTopParameter;
  leftPaddleBottom = leftPaddleBottomParameter;
  rightPaddleTop = rightPaddleTopParameter;
  rightPaddleBottom = rightPaddleBottomParameter;
} //End Paddle Update
float xDirection() {
  float xDirection = int (random (-2, 2) ); //float, truncated, must be 2 minimum
  while ( xDirection == 0 ) {
    xDirection = int (random (-2, 2) ); //variable must be populated first
  }
  return xDirection;
} //End xDirection
float yDirection() {
  float yDirection = int (random (-2, 2) ); //float, truncated, must be 2 minimum
  while ( yDirection == 0 ) {
    yDirection = int (random (-2, 2) ); //variable must be populated first
  }
  return yDirection;
} //End yDirection
void bounce() {
  //Top and Bottom
  if ( y < pongTableTopY+(w*1/2) || y > pongTableBottomY-(w*1/2) ) ySpeed *= -1;
  //
  //Left Paddle, with search (Shortcut Evaluation
  if (x < pongTableX_Middle*1/2 && x < el+(w*1/2) ) {
    if ( y > leftPaddleTop && y < leftPaddleBottom ) xSpeed *= -1;
  }
  //Right Paddle, with search
  if (x > pongTableX_Middle*3/2 && x > er-(w*1/2)) {
    if ( y > rightPaddleTop && y < rightPaddleBottom ) xSpeed *= -1;
  }
} //End bounce
//
} //End Ball
