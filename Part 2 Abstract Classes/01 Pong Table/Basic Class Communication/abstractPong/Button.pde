abstract class Button extends Rectangle {
  //Global Variables
  //
  Button (float x, float y, float w, float h, Boolean n, color c) {
    super(x, y, w, h, n, c);
  } //End Button
  //
  //Methods
  abstract void draw();
  //
  /* Features:
   - Quit: ext()
   - Restart: resets starting variables
   - Player: 2-player, 1-player, screen saver (keyboard is overwritten with y-variable)
   - Menu | Personalization | Instructions | Settings : TBA
   */
} //End Button
