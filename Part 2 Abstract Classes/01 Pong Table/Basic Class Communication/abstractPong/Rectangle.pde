abstract class Rectangle extends Shape {
  //Global Variables
  //
  Rectangle(float x, float y, float w, float h, Boolean n, color c) {
    super(x, y, w, h, n, c);
  }
  //
  //Methods
  abstract void draw();
  //
  abstract color backgroundColour(Boolean n);
  //
} //End Rectangle
