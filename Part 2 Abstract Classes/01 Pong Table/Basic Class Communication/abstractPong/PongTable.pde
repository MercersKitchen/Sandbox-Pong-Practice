class PongTable extends Rectangle {
  //Global Variables
  //
  PongTable (float x, float y, float w, float h, Boolean n, color c) {
    super(x, y, w, h, n, c);
  } //End PongTable
  //
  //Methods
  void draw() {
    //Border: foreground v background, separation from table to buttons
    //Background Colour: simple fill or toggle with nightMode
    //println(c);
    c = backgroundColour(n);
    fill(c);
    rect(x, y, w, h); //Pong Table
    //fill(resetDefault);
    //Reset the Defaults
  } //End draw()
  //
  color backgroundColour(Boolean n) { //See Night Mode
    color colour=0;
    if ( n == true ) {
      colour = #050500;
      return colour;
    } else {
      colour = #000000;
      return colour;
    }
  } //End backgroundColour
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
   */
} //End PongTable
