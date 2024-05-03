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
  void updateSetup( float pongTableMiddle, float xNetValue, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9 ) {
    if ( x < pongTableMiddle ) {
      xEdgeBounce += xNetValue+w;
    } else {
      x -= w;
      xEdgeBounce += xNetValue-w;
    }
  } //End Paddle X Update
} //End Paddle
