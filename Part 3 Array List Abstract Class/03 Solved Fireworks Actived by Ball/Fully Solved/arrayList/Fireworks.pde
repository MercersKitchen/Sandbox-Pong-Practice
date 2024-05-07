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
  float gravity=0.5; //Value is not big enough yet (ratio of screen(
  //Boolean[] disappear = new Boolean[numberOfSparks];
  //
  float pongTableLeft, pongTableRight, pongTableTopY, pongTableBottomY;
  //
  Fireworks ( float x, float y, float w, float h, color c ) {
    super(x, y, w, h, c);
  } //End Constructor
  void updateSetup( float xp, float yp, float wp, float ptyp, float pbyp, float ptmp, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    pty = ptyp;
    pby = pbyp;
    ptm = ptmp;
    for ( int i=0; i<fx.length; i++ ) {
      fx[i] = xp;
      fy[i] = yp;
      fd[i] = direction( wp*1/10, wp*2);
      if ( xp < ptmp ) xSpeed[i] = direction( 0, 2);
      if ( xp > ptmp ) xSpeed[i] = direction( -2, 0);
      ySpeed[i] = direction( -2, 2);
      xSpeedChange[i] = direction( 0, 5);
      ySpeedChange[i] = direction( 0, 5);
      fc[i] = color( random(255), random(255), random(255) );
    }
    //NOTE: Above leads to multi-dimensional arrays
  } //End Update Constructor
  //
  //Methods
  void draw() {
    //if ( fy[i]-fd[i]*1/2 <= pby ) {}
    for ( int i=0; i<fx.length; i++ ) {
      fill(fc[i]);
      //println(i, fx[i], fy[i], pby, fd[i]); //
      if ( fy[i]+fd[i]*1/2 <= pby ) ellipse(fx[i], fy[i], fd[i], fd[i]); //fy[i]+fd[i]*1/2 <= pby
      fill(rd);
      //println(i, fx, fy);
      fx[i] = moveX( fx[i], xSpeed[i], xSpeedChange[i] ) ;
      fy[i] = moveY( fy[i], ySpeed[i], ySpeedChange[i] ) ;
    }
    //for (float d :
    /*
    for ( Shape s : shapes ) {
     s.draw();
     */
    //}
    //} //Drawing Fireworks
  } //End draw
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //End background colour
  //
  /*Update Fireworks X-Value when Ball Scores
   void xUpdate() {
   for ( int i=0; i<fx.length; i++ ) {
   fx[i] = bx;
   fy[i] = by;
   }
   update=false;
   }
   */  // End X-Update
  //
  float moveX( float mx, float xs, float xsc ) {
    mx += xs + xsc;
    return mx;
  } //End Move Fireworks
  float moveY( float my, float ys, float ysc ) {
    ys += gravity;
    my += ys + ysc;
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
