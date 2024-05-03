abstract class Rectangle extends Shape {
  //Global Variables
  //
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //
  //Methods
  abstract void draw();
  abstract color backgroundColour();
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4 );
  //
} //End Rectangle
