/* To Do List
 Fix edge overlap
 Fix star overlap
 */

void createStars()
{
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star(random(width), random(height), random(5, 20));
  }//End FOR Constructor
}//End createStars
