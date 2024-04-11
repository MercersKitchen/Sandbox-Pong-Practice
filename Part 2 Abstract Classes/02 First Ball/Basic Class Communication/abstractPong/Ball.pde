class Ball extends Circle {
  //Global Variables
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
    //Bounce off top and bottom, paddles will be later
  } //End Move Ball
  //
  /* Features
   - Ball in net triggers FIREWORKS
   */
  //
} //End Ball
