class Ball
{
  //Global Variables
  float x, y, diameter;
  color colour;
  //
  //Constructor
  Ball () {
    //Constructor Is ... hard coded, single variable object
    //Local Variables, deleted at end of Constructor
    int startX = width*1/2;
    int startY = height*1/2;
    int referentMeasure = ( width < height ) ? width : height ; //Review Ternary Operator
    //
    //Object Variables
    x = startX; //spawn myBall in the middle of the display
    y = startY;
    diameter = referentMeasure * 1/20;
    colour = color ( random(0, 255), random(255), random(255) ) ; //random(), random()-shortcut, casting from float to intin color var
    } //End Constructor
  //
  void draw() { //ball
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
  }//End draw
  //
} //End Ball
