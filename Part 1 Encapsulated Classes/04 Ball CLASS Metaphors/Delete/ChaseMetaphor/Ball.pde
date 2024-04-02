/*Note: does not work with Abstract Classes
 Reviews general classes
 */

class Ball {
  //Global Variable
  float x, y, diameter, targetX, targetY;
  color colour;
  //
  Ball(float xParameter, float yParameter, float diameterParameter) {
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
    int r = colourSelection(); //Best Practice
    int g = colourSelection();
    int b = colourSelection();
    colour = color(r, g, b);
    //targetX&Y must be made beginning values or introduces bug
    targetX = x;
    targetY = y;
  }//End Ball Constructor
  //
  void draw() {
    fill(colour);
    step();
    ellipse(x, y, diameter, diameter);
  }//End draw()
  //
  //Procedures
  int colourSelection() {
    // randomly chosen formulaic value
    return abs ( int ( random(0-256) ) );
  }//End colourSelection
  //
  void step() {
    if (x < targetX) {
      x += abs(targetX-x)/20;
    } else {
      x -= abs(targetX-x)/20;
    }
    if (y < targetY) {
      y += abs(targetY-y)/20;
    } else {
      y -= abs(targetY-y)/20;
    }
  }//End step()
  //
  //Getters and Setters
  void setTargetX(float i) {
    targetX = i;
  }//End setTargetX
  void setTargetY(float i) {
    targetY = i;
  }//End setTargetX
  //
}//End Ball
