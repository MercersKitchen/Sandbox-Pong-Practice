class PongTable extends Rectangle {
  //Local Variables to PongTable in Shape, will be deleted
  //Global Variables to PongTable
  float leftNetX_Top, leftNetY_Top, leftNetX_Bottom;
  float rightNetX_Top, rightNetY_Top, rightNetX_Bottom;
  float middlePongTableX, middlePongTableY_Top, middlePongTableY_Bottom;
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
    line(leftNetX_Top, leftNetY_Top, leftNetX_Bottom, pongTableBottom);
    line(rightNetX_Top, rightNetY_Top, rightNetX_Bottom, pongTableBottom);
    line(middlePongTableX, middlePongTableY_Top, middlePongTableX, middlePongTableY_Bottom);
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
  void updateSetup( float netWidth, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    leftNetX_Top = x+netWidth;
    leftNetY_Top = y;
    leftNetX_Bottom = leftNetX_Top;
    pongTableBottom = leftNetY_Top+h;
    rightNetX_Top = w-netWidth;
    rightNetY_Top = leftNetY_Top;
    rightNetX_Bottom = rightNetX_Top;
    middlePongTableX = ( ( rightNetX_Top - leftNetX_Top ) / 2 ) + netWidth; //Used in Paddle Constructor to create left or right Paddle
    middlePongTableY_Top = leftNetY_Top;
    middlePongTableY_Bottom = pongTableBottom;
  } //Ball Diameter Update
  //
} //End PongTable
