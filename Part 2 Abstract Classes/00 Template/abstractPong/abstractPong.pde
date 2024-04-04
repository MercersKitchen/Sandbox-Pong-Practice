import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
//
void setup() {
  size(400, 600); //Landscape
  //fullScreen();
  display();
} //End setup
//
void draw() {
  //ERROR Check of Display: Landscape ONLY
  if ( displaycheck==true ) displayLandscape(); //Bru, turn your phun
  //
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Driver
