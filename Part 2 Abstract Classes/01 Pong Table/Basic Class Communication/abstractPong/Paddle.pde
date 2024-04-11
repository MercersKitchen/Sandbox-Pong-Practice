abstract class Paddle extends Rectangle {
  //Global Variables
  //
  Paddle (float x, float y, float w, float h, Boolean n, color c) {
    super(x, y, w, h, n, c);
  } //End Paddle
  //
  //Methods
  abstract void draw();
  //
  /* Features:
   - Give Ball X-variable to bounce between two y-variables
   */
} //End Paddle
