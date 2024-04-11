abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, Boolean n, color c) {
    super(x, y, w, h, n, c);
  } //End Circle
  //
  //Methods
  abstract void draw(); //End draw
  //
  abstract color backgroundColour(Boolean n); //End Night Mode Colour Selector
  //
} // End Circle
