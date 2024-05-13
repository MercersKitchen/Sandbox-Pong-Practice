abstract class Shape {
  //Global Variables to Shape and all Extensions
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  // Future Paddle Array & Bumper Easter Egg 
  // Note: width does not change, stays local variable
  float el; //left bounce edge, x-pixel
  float er; //right bounce edge, x-pixel
  float plt; // left top paddle y-pixel
  float plb; // left bottom paddle y-pixel
  float prt; // right top paddle y-pixel
  float prb; // right bottom paddle y-pixel
  //
  Boolean s; //Ball Stops Moving, set in Ball Class Only
  color c, rd; //Shape Colour
  //
  //Constructor
  Shape(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
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
