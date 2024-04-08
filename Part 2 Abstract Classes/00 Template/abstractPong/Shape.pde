abstract class Shape {
  //Global Variables
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  color c, rd; //Shape Colour
  //
  //Constructor
  Shape(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    rd = nightModeColour();
  } //End Constructor
  //
  //Methods
  void draw() {
    //Empty
  } //End draw()
  //
  int nightModeColour() {
    color nm = 0;
    return nm;
  } //End Night Mode Colour Selector
  //
} //End Shape
