//Global Variables et al.
Star stars;

void setup() {
  size(500, 600);
  stars = new Star(width*1/2, height*1/2, width*1/120);
}//End setup()

void draw() {
  stars.draw(); //Only part of Star Class being Accessed right now
}//End draw()

void mousePressed() {}//End mousePressed

void keyPressed() {
}//End keyPressed
