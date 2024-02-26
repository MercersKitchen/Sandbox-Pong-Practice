/* Two Bugs to Fix
 1. DONE - Stars "half off" canvas, similar to pong-ball not bouncing when collides with edge
 2. Stars overlapping
 */

void createStars()
{
  //Note: FOR-EACH Loop more appropriate for Arrays and Classes
  for (int i=0; i<stars.length; i++) {
    float diameterRandom = random(width*1/200, width*1/120);
    float xRandom = random(diameterRandom*1/2, width-diameterRandom*1/2);
    float yRandom = random(diameterRandom*1/2, height-diameterRandom*1/2);
    stars[i] = new Star(xRandom, yRandom, diameterRandom); //width*1/2, height*1/2,
  }//End FOR Population
}//End createStars
