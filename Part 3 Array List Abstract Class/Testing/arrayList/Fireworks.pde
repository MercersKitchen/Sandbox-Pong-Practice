class Fireworks extends Ball {
  //Global Variables to Fireworks in Fireworks, Local to Shapes
  int numberOfSparks = 25;
  float[] fx = new float[numberOfSparks];
  float[] fy = new float[numberOfSparks];
  float[] fd = new float[numberOfSparks]; //spark diameter
  color[] fc = new color[numberOfSparks];
  float[] xSpeed = new float[numberOfSparks];
  float[] ySpeed = new float[numberOfSparks];
  float[] xSpeedChange = new float[numberOfSparks];
  float[] ySpeedChange = new float[numberOfSparks];
  float gravity=0.5;
  //Boolean[] disappear = new Boolean[numberOfSparks];
  //
  float pongTableLeft, pongTableRight, pongTableTopY, pongTableBottomY;
  //
  Fireworks ( float x, float y, float w, float h, color c ) {
    super(x, y, w, h, c);
  } //End Constructor
  void updateConstructor( float xp, float yp, float wp ) {
    //
    /*for ( float fxs : fx ) {
     fxs = x;
     }
     */
    //
    for ( int i=0; i<fx.length; i++ ) {
      fx[i] = xp;
      fy[i] = yp;
      fd[i] = direction( wp*1/10, wp*2);
      xSpeed[i] = direction( -2, 2);
      ySpeed[i] = direction( -2, 2);
      xSpeedChange[i] = direction( -5, 5);
      ySpeedChange[i] = direction( -5, 5);
      fc[i] = color( random(255), random(255), random(255) );
      //disappear[i] = d;
    }
    //NOTE: Above leads to multi-dimensional arrays
  } //End Update Constructor
  //
  //Methods
  void draw() {
    if ( s==true ) { //Shape Global Variable
      //if ( update==true ) xUpdate();
      for ( int i=0; i<fx.length; i++ ) {
        fill(fc[i]);
        if ( fy[i]-w*1/2 <= pongTableBottomY ) ellipse(fx[i], fy[i], w, h);
        fill(rd);
        fx[i] = moveX( fx[i], xSpeed[i], xSpeedChange[i] ) ;
        fy[i] = moveY( fy[i], ySpeed[i], ySpeedChange[i] ) ;
      }
    } //Drawing Fireworks
  } //End draw
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //End background colour
  void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
  } //End Update Setup
  //
  /*Update Fireworks X-Value when Ball Scores
   void xUpdate() {
   for ( int i=0; i<fx.length; i++ ) {
   fx[i] = bx;
   fy[i] = by;
   }
   update=false;
   }
   */ // End X-Update
    //
    float moveX( float mx, float xs, float xsc ) {
    mx += xs * xsc;
    return mx;
  } //End Move Fireworks
  float moveY( float my, float ys, float ysc ) {
    ys += gravity;
    my += ys * ysc;
    return my;
  }
  //
  //From Ball Class
  int direction( int lower, int upper ) {
    //NOTE: Endpoints of Axis Direction is same
    int axisDirection = int (random (lower, upper) ); //float, truncated, must be 2 minimum
    while ( axisDirection == 0 ) {
      axisDirection = int (random (lower, upper) ); //variable must be populated first
    }
    return axisDirection;
  }
  float direction( float lower, float upper ) {
    //NOTE: Endpoints of Axis Direction is same
    //float decimalDirection;
    float decimalDirection = random (lower, upper);
    while ( decimalDirection == 0.0 ) {
      decimalDirection = random (lower, upper);
    }
    return decimalDirection;
  } //End xDirection
} //End Fireworks
