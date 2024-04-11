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
  pongTable = new PongTable (appWidth*0, appHeight*1/10, appWidth, appHeight*8/10, colourBackground);
  int ballDiameter = ( appWidth > appHeight ) ? appHeight : appWidth;
  ballDiameter = ballDiameter*1/60;
  ball = new Ball( pongTable.w*1/2, pongTable.y+(pongTable.h*1/2), ballDiameter, ballDiameter, colourForeground );
  println(ball.w);
  //
} //End setup
//
void draw() {
  //ERROR Check of Display: Landscape ONLY
  if ( displayCheck==true ) displayLandscape(); //Bru, turn your phun
  //ERROR: play display sound effect from draw()
  //
  pongTable.draw();
  ball.draw();
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Driver
