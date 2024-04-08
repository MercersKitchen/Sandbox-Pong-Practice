abstract class Shape {
  //Global Variables
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  color c; //Shape Colour
  //
  //Constructor
  Shape(float xParameter, float yParameter, float wParameter, float hParameter, color cParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.w = wParameter;
    this.h = hParameter;
    this.c = cParameter;
  } //End Constructor
  //
  //Methods
  void draw() {} //End draw()
  //
} //End Shape
