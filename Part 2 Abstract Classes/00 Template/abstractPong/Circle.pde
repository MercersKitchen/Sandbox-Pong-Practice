abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Circle
  //
  //Methods
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  } //End draw
  //
  int nightModeColour() {
    color nm = 0;
    return nm;
  } //End Night Mode Colour Selector
  //
  //
} // End Circle
