class Ball extends Circle {
  //Global Variables
  float pongTableTop, pongTableBottom;
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
  void pongTableUpdate( float topParameter, float bottomParameter ) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
  } //End Pong Table Update
  void paddleUpdate() {
    //Left Paddle Bounce Line
    //Right Paddles Bounce Line
  } //End Paddle Update
  //
} //End Ball
