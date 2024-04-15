class Paddle extends Rectangle {
  //Global Variables
  float xEdgeBounce=0.0;
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Paddle
  //
  //Methods
  void draw() {
    fill(c);
    rect( x, y, w, h);
  } //End draw
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //End background Colour
  //
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
  //
  //Getters and Setters
  void paddleX_Update( float pongTableMiddle) {
    if ( pongTableMiddle > x ) {
      xEdgeBounce += w;
    } else {
      xEdgeBounce -= w;
    }
  } //End Paddle X Update
} //End Paddle
