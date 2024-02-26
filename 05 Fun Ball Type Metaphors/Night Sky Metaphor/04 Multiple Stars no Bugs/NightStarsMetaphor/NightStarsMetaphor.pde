//Global Variables et al.
int NumberOfStars = 500; //Version of Static Variable in Pure Java
Star[] stars = new Star[NumberOfStars]; //Processing Requires #, Pure Java allows static variable
color black=#000000;

void setup() {
  size(500, 600);
  createStars();
  //
}//End setup()

void draw() {
  background(black);
  for (int i=0; i<stars.length; i++) {
    stars[i].draw(); //Only part of Star Class being Accessed right now
  }//End FOR
}//End draw()

void mousePressed() {
  createStars();
}//End mousePressed

void keyPressed() {
}//End keyPressed
