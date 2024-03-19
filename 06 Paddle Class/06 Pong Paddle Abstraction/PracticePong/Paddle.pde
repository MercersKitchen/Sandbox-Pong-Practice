/* Known ERRORs
 - TBA
 */
class Paddle {
  //
  //Global Variables
  float tableX, tableY, tableWidth, tableHeight;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight, paddleStartHeight, paddleTravelDistance;
  color paddleColour;
  Boolean up=false, down=false;
  //
  //Overloaded Constructor
  //Purpose: left and right paddles
  Paddle ( float paddleStartParameter, float ballDiameterParameter ) {
    tablePopulation(); //Technically, vars populated twice
    netWidth = ballDiameterParameter * 3;
    paddleWidth = ballDiameterParameter * 1/2; //Ball Radius
    //CAUTION: netX will have the same value
    if ( paddleStartParameter == 0 ) netX = paddleStartParameter; //Adding to the netX
    if ( paddleStartParameter == width ) {
      netX = paddleStartParameter - netWidth *2 - paddleWidth; //Subtracting the netX
    }
    this.paddleX = netX + netWidth; //CAUTION: netX has two values, ERROR
    if ( paddleStartParameter == width ) netX = paddleStartParameter - netWidth;
    this.paddleStartHeight = 0.25; //if Easter Egg number must be tracked
    this.paddleHeight = tableHeight * paddleStartHeight;
    this.paddleY = tableY + ( tableHeight * 1/2 ) - ( paddleHeight *1/2 );
    paddleColour = 0; //Grey Scale, not RGB, color ( int(random()), int(random()), int(random()) )
    this.paddleTravelDistance = 1; //Easter Egg: paddle speed is 1 pixel
  } //End Paddle Constructor
  //
  void draw() {
    if (paddleX < width*1/2) {
      fill(255);
      table(); //System Resources ERROR: draw() loop is too much for one drawing
      fill(0); //Reset Defaults
    }
    //CAUTION: PONG TABLE drawn 120x/second, code in both paddle instances
    fill(paddleColour);
    paddles();
    fill(0); //Reset Defaults
    //
    //Arithmetic for Paddles
    if ( up == true ) movePaddleUp();
    if ( down == true ) movePaddleDown();
  } //End draw
  //
  //VOIDS and Returns
  //Draw Table
  void tablePopulation() {
    tableX = width*0;
    tableY = height * 1/10;
    tableWidth = width-1;
    tableHeight = height * 8/10;
  } //End Table
  void table() {
    rect(tableX, tableY, tableWidth, tableHeight); //need lines for design
    //line(); //alternative design
  } //End Table
  //Draw Paddles
  void paddles() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  } //End Paddles
  void movePaddleDown() {
    paddleY += paddleTravelDistance;
    if ( paddleY > tableY+tableHeight-paddleHeight ) paddleY = tableY+tableHeight-paddleHeight; //ERROR Catch
    //down = false; //ERROR: boolean reset means one paddle at a time, no gamie
  } //End Move Paddles
  void movePaddleUp() {
    paddleY -= paddleTravelDistance;
    if ( paddleY < tableY ) paddleY = tableY; //ERROR Catch
    //up = false; //ERROR: boolean reset means one paddle at a time, no gamie
  } //End Move Paddles
  //
  void keyPressedWASD() {
    if ( key=='W' | key=='w' ) up=true ;
    if ( key=='S' | key=='s' ) down=true;
  }
  void keyPressedARROW() {
    if ( key==CODED & keyCode==UP ) up=true;
    if ( key==CODED & keyCode==DOWN ) down=true;
  }
  void keyReleasedWASD() {
    if ( key=='W' | key=='w' ) up=false ;
    if ( key=='S' | key=='s' ) down=false;
  }
  void keyReleasedARROW() {
    if ( key==CODED & keyCode==UP ) up=false;
    if ( key==CODED & keyCode==DOWN ) down=false;
  }
} //End Paddle
