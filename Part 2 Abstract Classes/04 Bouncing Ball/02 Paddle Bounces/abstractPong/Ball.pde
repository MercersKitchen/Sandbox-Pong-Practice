class Ball extends Circle {
  //Global Variables
  float pongTableTop, pongTableBottom, leftPaddleBounceEdge, rightPaddleBounceEdge;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Ball
  //
  //Methods
  //
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  } //End Draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //End Night Mode Colour Selector
  //
  void move() {
    //Students to finish
    //Bounce off PongTable.y, paddles will be later
  } //End Move Ball
  //
  /* Features
   - Ball in net triggers FIREWORKS
   */
  //
  // Getters & Setters
  void pongTableUpdate( float topParameter, float bottomParameter, float leftPaddleEdge, float rightPaddleEdge ) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
    leftPaddleBounceEdge = leftPaddleEdge; //Left Paddle Bounce Line
    rightPaddleBounceEdge = rightPaddleEdge; //Right Paddles Bounce Line
  } //End Pong Table Update
  //
} //End Ball
