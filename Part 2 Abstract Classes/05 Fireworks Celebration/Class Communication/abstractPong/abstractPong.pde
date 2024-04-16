import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
PongTable pongTable;
Ball ball;
Ball[] fireworks = new Ball[25];
Paddle leftPaddle, rightPaddle;
//
void setup() {
  //size(400, 600); //Landscape for testing
  fullScreen();
  musicSetup();
  display();
  // Night Mode
  color colourBackground = #050500; //CAUTION: using timer or button to change Night Mode
  color colourForeground = #ffff00;
  //
  int ballDiameter = ( appWidth > appHeight ) ? appHeight : appWidth; //display() as landscape makes this redundant
  ballDiameter = ballDiameter*1/60;
  pongTable = new PongTable (appWidth*0, appHeight*2/10, appWidth, appHeight*7/10, colourBackground);
  pongTable.ballDiameterUpdate( ballDiameter*2 );
  ball = new Ball( pongTable.w*1/2, pongTable.y+(pongTable.h*1/2), ballDiameter, ballDiameter, colourForeground );
  leftPaddle = new Paddle (pongTable.leftNetX_Top, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/2 + pongTable.leftNetY_Top*1/2, ballDiameter*1/2, ( pongTable.leftNetY_Bottom-pongTable.leftNetY_Top )/4, colourForeground);
  rightPaddle = new Paddle (pongTable.rightNetX_Top, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/2 + pongTable.rightNetY_Top*1/2, ballDiameter*1/2, ( pongTable.rightNetY_Bottom-pongTable.rightNetY_Top )/4, colourForeground);
  leftPaddle.paddleX_Update(pongTable.w*1/2); //Execute ONCE
  rightPaddle.paddleX_Update(pongTable.w*1/2); //Execute ONCE
  ball.pongTableUpdate( pongTable.y, pongTable.y+pongTable.h, leftPaddle.xEdgeBounce, rightPaddle.xEdgeBounce ); //Execute ONCE
  //Executes Constructor
  for (int i=0; i<fireworks.length; i++) {
    fireworks[i] = new Ball (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, ball.c);
  }
  //print(fireworks[0].w);
} //End Setup
//
void draw() {
  //ERROR Check of Display: Landscape ONLY
  if ( displayCheck==true ) displayLandscape(); //Bru, turn your phun
  //ERROR: play display sound effect from draw()
  //
  pongTable.draw();
  ball.draw();
  leftPaddle.draw();
  rightPaddle.draw();
  //
  //For this to work, a Boolean trigger must happen in Ball Class when the Ball is stuck in the net
  //The actual FIREWORKS Class can be deleted.
  //The trigger would happen in the Ball.draw() and be connected with other VOIDs or RETURNs
  for (int i=0; i<fireworks.length; i++) {
    fireworks[i].draw();
  }
  //
  //Update for next draw-loop
  ball.paddleUpdate(leftPaddle.xEdgeBounce, rightPaddle.xEdgeBounce); //Move to Ball.draw()
  //
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End Driver
