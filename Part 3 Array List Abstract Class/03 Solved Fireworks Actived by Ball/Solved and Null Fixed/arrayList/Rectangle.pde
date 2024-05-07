abstract class Rectangle extends Shape {
  //Local Variables to Rectangle in Shape, will be deleted
  //Global Variables to Rectangle
  //
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //
  //Methods
  abstract void draw();
  abstract color backgroundColour();
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 );
  //
} //End Rectangle
