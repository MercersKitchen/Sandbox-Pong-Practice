abstract class Shape {
  //Global Variables
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  Boolean n; //Night Mode
  color c; //Colour based on Night Mode
  //
  //Constructor
  Shape(float x, float y, float w, float h, Boolean n, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.n = n;
    this.c = c;
  } //End Constructor
  //
  //Methods
  abstract void draw(); //Empty draw()
  //
  abstract color backgroundColour(Boolean n); //End Night Mode Colour Selector
  //
} //End Shape
