import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  //Display - Students to Add
  size(600, 400); 
  //fullScreen();
  display();
  //
  //Audio - Students to Add
  //musicSetup();
  //
  //Classes - Students to Add, hint: TABs (Teacher to add first)
  //
  /* Build Local Objects - Students to Add, i.e. start with Ball, then Pong Table, etc.
   color colourBackground = #050500; //CAUTION: using timer or button to change Night Mode
   color colourForeground = #ffff00;
   int ballDiameter = ( appWidth > appHeight ) ? appHeight : appWidth; //display() as landscape makes this redundant
   ballDiameter = ballDiameter*1/60;
   PongTable pongTable = new PongTable (appWidth*0, appHeight*2/10, appWidth, appHeight*7/10, colourBackground);
   pongTable.ballDiameterUpdate( ballDiameter*2 );
   Ball ball = new Ball( pongTable.w*1/2, pongTable.y+(pongTable.h*1/2), ballDiameter, ballDiameter, colourForeground );
   Paddle leftPaddle = new Paddle (pongTable.leftNetX_Top, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/2 + pongTable.leftNetY_Top*1/2, ballDiameter*1/2, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/4, colourForeground);
   Paddle rightPaddle = new Paddle (pongTable.rightNetX_Top, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/2 + pongTable.rightNetY_Top*1/2, ballDiameter*1/2, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/4, colourForeground);
   leftPaddle.paddleX_Update(pongTable.w*1/2); //Execute ONCE
   rightPaddle.paddleX_Update(pongTable.w*1/2); //Execute ONCE
   ball.pongTableUpdate( pongTable.y, pongTable.y+pongTable.h, leftPaddle.xEdgeBounce, rightPaddle.xEdgeBounce ); //Execute ONCE
   //Fireworks Constructor
   */
  //
  //Shapes Global Variable, DOC Map for Number of Objects in your Abstract Pong
  //shapes.add(leftPaddle); //Element 0, Left Paddle
  //Formula: shapes.add();
  //
  //Reminder: all local objects are deleted, "Garbage Heap Collected"
} //End setup
//
void draw() {
  background(0);
  //
  //Arithmetic: code that helps objects talk to each other
  //Ball to get information from current paddle position
  //  Search for Paddle when close to it
  //Ball to tell position if in the net: fireworks, scoreboard, reset, etc
  //shapes.get(2).paddleBounceLeft( shapes.get(0).xGetter(), shapes.get(0).yGetter(), shapes.get(0).wGetter(), shapes.get(0).hGetter() );
  //shapes.get(2).paddleBounceRight( shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).hGetter() );
  //
  for ( Shape s : shapes ) {
    s.draw();
  }
  /* for ( int i=0; i<shapes.size(); i++ ) {
   shapes.get(i).draw();
   }
   */
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
