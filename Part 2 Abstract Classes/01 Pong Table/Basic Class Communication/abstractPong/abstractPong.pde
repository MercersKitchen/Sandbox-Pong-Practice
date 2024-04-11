import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
PongTable pongTable;
//
void setup() {
  //size(400, 600); //Landscape for testing
  fullScreen();
  musicSetup();
  display();
  // Night Mode
  Boolean nightMode = ( hour()<8 || hour()>21 ) ? true : false ;
  //
  //Note: if gray shows up, it is an error
  pongTable = new PongTable (appWidth*0, appHeight*2/10, appWidth, appHeight*7/10, nightMode, 128);
  //
} //End setup
//
void draw() {
  //ERROR Check of Display: Landscape ONLY
  if ( displayCheck==true ) displayLandscape(); //Bru, turn your phun
  //ERROR: play display sound effect from draw()
  //
  pongTable.draw();
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Driver
