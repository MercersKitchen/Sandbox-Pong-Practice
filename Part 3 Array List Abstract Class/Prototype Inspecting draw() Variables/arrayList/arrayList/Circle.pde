abstract class Circle extends Shape {
  //Local Variables to Circle in Shape, will be deleted
  //Global Variables to Circle
  //
  Circle (float x, float y, float w, float h, float el, float er, float tl, float tr, Boolean s, color c) {
    super(x, y, w, h, el, er, tl, tr, s, c);
  } //End Circle
  //
  //Methods
  abstract void draw();
  abstract color backgroundColour();
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9 );
  //
} // End Circle
