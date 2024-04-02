//Global Variables et al.
int NumberOfStars = 50; //Version of Static Variable in Pure Java
Star[] stars = new Star[NumberOfStars]; //Processing Requires #, Pure Java allows static variable
color black=#000000;

void setup() {
  size(500, 600);
  //Note: FOR-EACH Loop more appropriate for Arrays and Classes
  for (int i=0; i<stars.length; i++) {
    float xRandom = random(0, width);
    float yRandom = random(0, height);
    float diameterRandom = random(width*1/200, width*1/120);
    stars[i] = new Star(xRandom, yRandom, diameterRandom); //width*1/2, height*1/2,
  }//End FOR Population
  /* Two Bugs to Fix
   1. Stars "half off" canvas, similar to pong-ball not bouncing when collides with edge
   2. Stars overlapping
   */
  //
}//End setup()

void draw() {
  background(black);
  for (int i=0; i<stars.length; i++) {
    stars[i].draw(); //Only part of Star Class being Accessed right now
  }//End FOR
}//End draw()

void mousePressed() {
}//End mousePressed

void keyPressed() {
}//End keyPressed
