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
  musicSetup();
  //
  // Night Mode
  color colourBackground = #050500; //CAUTION: using timer or button to change Night Mode
  color colourForeground = #ffff00;
  //
  //Move to Ball Class for CONSTRUCTOR and UPDATE
  int ballDiameter = ( appWidth > appHeight ) ? appHeight : appWidth; //display() as landscape makes this redundant
  //
  //Classes - Students to Add, hint: TABs (Teacher to add first)
  ballDiameter = ballDiameter*1/60;
  PongTable pongTable = new PongTable (appWidth*0, appHeight*2/10, appWidth, appHeight*7/10, 0.0, 0.0, 0.0, 0.0, false, colourBackground);
  pongTable.updateSetup( ballDiameter*2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
  Ball ball = new Ball( pongTable.w*1/2, pongTable.y+(pongTable.h*1/2), ballDiameter, ballDiameter, 0.0, 0.0, pongTable.x, pongTable.x+pongTable.w, false, colourForeground );
  Paddle leftPaddle = new Paddle (pongTable.leftNetX_Top, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/2 + pongTable.leftNetY_Top*1/2, ballDiameter*1/2, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/4, 0.0, 0.0, 0.0, 0.0, false, colourForeground);
  Paddle rightPaddle = new Paddle (pongTable.rightNetX_Top, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/2 + pongTable.rightNetY_Top*1/2, ballDiameter*1/2, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/4, 0.0, 0.0, 0.0, 0.0, false, colourForeground);
  leftPaddle.updateSetup( pongTable.w*1/2, pongTable.leftNetX_Top, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ); //Execute ONCE
  rightPaddle.updateSetup( pongTable.w*1/2, pongTable.rightNetX_Top, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ); //Execute ONCE
  ball.updateSetup( pongTable.y, pongTable.y+pongTable.h, pongTable.middlePongTableX, leftPaddle.el, rightPaddle.er, leftPaddle.y, leftPaddle.y+leftPaddle.h, rightPaddle.y, rightPaddle.y+rightPaddle.h ); //Execute ONCE
  //fireworks = new Fireworks (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, ball.c);
  //
  //println(ball.x, ball.el, ball.y, ball.er, ball.s); //Inspect Objects
  //
  //shapes Global Variable, DOC Map for Number of Objects in your Array List
  shapes.add(pongTable); //Element 0, pongTable
  shapes.add(leftPaddle); //Element 1, Left Paddle
  shapes.add(rightPaddle); //Element 2, Right Paddle
  shapes.add(ball); //Element 3, Ball
  //Formula: shapes.add();
  //
  //Reminder: all local objects are deleted, "Garbage Heap Collected"
} //End setup
//
void draw() {
  println(shapes.get(3).el, shapes.get(3).x, shapes.get(3).er, shapes.get(3).s );
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
