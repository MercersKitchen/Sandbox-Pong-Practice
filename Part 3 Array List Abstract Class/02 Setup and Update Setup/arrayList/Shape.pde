abstract class Shape {
  //Global Variables to Shape and all Extensions
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  float el; //left bounce edge
  float er; //right bounce edge
  Boolean s; //Ball Scores
  color c, rd; //Shape Colour
  //
  //Constructor
  Shape(float x, float y, float w, float h, float el, float er, Boolean s, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.el = el;
    this.er = er;
    this.s = s;
    this.c = c;
    rd = backgroundColour(); //Populated Once is all constructors and updated constructors
  } //End Constructor
  //
  //Methods
  abstract void draw();
  abstract color backgroundColour();
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 );
  //
} //End Shape
