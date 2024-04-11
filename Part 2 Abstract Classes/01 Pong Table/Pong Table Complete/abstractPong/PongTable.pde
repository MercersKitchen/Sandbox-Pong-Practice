class PongTable extends Rectangle {
  //Global Variables
  //Add Net Variables
  //
  PongTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    //Populate Net Variables
  } //End PongTable
  //
  //Methods
  void draw() {
    //Border: foreground v background, separation from table to buttons
    //Background Colour: simple fill or toggle with nightMode
    fill(c);
    rect(x, y, w, h); //Pong Table
    //fill(resetDefault);
    //Net Lines based on net variables
    //Reset the Defaults
  } //End draw()
  //
  color backgroundColour() { //See Night Mode
    color colour=0;
    return colour;
  } //End backgroundColour
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
   */
} //End PongTable
