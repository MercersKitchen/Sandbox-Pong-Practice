class Paddle extends Rectangle {
  //Local Variables to Paddle in Shape, will be deleted
  //Global Variables to Paddle
  float pongTableMiddle;
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Paddle
  //
  //Methods
  void draw() {
    fill(c);
    if ( x < pongTableMiddle ) {
      rect( x, plt, w, h); //Note: drawing paddle must change
    } else {
      rect( x, prt, w, h); //Note: drawing paddle must change
    }
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
  void updateSetup( float pongTableMiddleParameter, float xNetValue, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    pongTableMiddle = pongTableMiddleParameter;
    if ( x < pongTableMiddleParameter ) { //NOTE: var==NULL, IF == false
      el += xNetValue+w;
    } else {
      x -= w;
      er += xNetValue-w;
    }
    //  prt prb
    if ( x < pongTableMiddleParameter ) {
      plt = y;
      plb = y+h;
      //Note: h = difference of plt & plb
    } else {
      prt = y;
      prb = y+h;
    }
  } //End Paddle X Update
} //End Paddle
