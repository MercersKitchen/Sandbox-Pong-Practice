class PongTable extends Rectangle {
  //Global Variables
  float leftNetX_Top, leftNetY_Top, leftNetX_Bottom, leftNetY_Bottom;
  Float rightNetX_Top, rightNetY_Top, rightNetX_Bottom, rightNetY_Bottom;
  //
  PongTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    c = backgroundColour();
  } //End PongTable
  //
  //Methods
  void draw() {
    //Border: foreground v background, separation from table to buttons
    //Background Colour: simple fill or toggle with nightMode
    fill(c);
    rect(x, y, w, h); //Pong Table
    //fill(resetDefault);
    //Reset the Defaults
    //
    stroke(255);
    //strokeWeight();
    line(leftNetX_Top, leftNetY_Top, leftNetX_Bottom, leftNetY_Bottom);
    line(rightNetX_Top, rightNetY_Top, rightNetX_Bottom, rightNetY_Bottom);
    noStroke();
    //Right Net
    //
  } //End draw()
  //
  color backgroundColour() { //See Night Mode
    color colour=#050500;
    return colour;
  } //End backgroundColour
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
   */
  //
  //Getters and Setters
  void ballDiameterUpdate( float netWidth ) {
    leftNetX_Top = x+netWidth;
    leftNetY_Top = y;
    leftNetX_Bottom = leftNetX_Top;
    leftNetY_Bottom = leftNetY_Top+h;
    rightNetX_Top = w-netWidth;
    rightNetY_Top = leftNetY_Top;
    rightNetX_Bottom = rightNetX_Top;
    rightNetY_Bottom = leftNetY_Bottom;
  } //Ball Diameter Update
  //
} //End PongTable
