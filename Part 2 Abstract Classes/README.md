# Abstract Pong Class Map
CS30 Daily Lessons

**To Be Incorporated into the MAIN ReadMe.md File**

Purpose: write code and variables once, then inherit

NOTE: specific code from working Pong Template is copied into the correct abstract class from inheritance
- then code is added

Reminder: abstract classes follow rules
- variables must all be the same
- variables can be manipulated in the class or overwritten
- all extended classes must have same methods

---

# Preparation

Abstract Class DOC Map: documenting how variables and method names cascade (values and functions can be manipulated)
- [ ] MAIN Program: same name as Folder
- [ ] SHAPE: x, y, width, height, colour, draw(), backgroundColour()
  - Circle
  - Rectangle
- [ ] CIRCLE
  - Ball: notice this is only a single object, move()
	- Note: Ball Class gives information to Fireworks Class
  - Fireworks: notice this array executes from inside the class, differentMove()
- [ ] RECTANGLE: colour()
  - NOte: These classes give information to Ball CLasses
  - PongTable: 
  - Paddle: movement
  - Button: hover over, menu, action
  - ScoreBoard: incrementing and display of number of ball objects that stop in the net
- [ ] BUTTON:
  - Start | Restart: move the ball, resets starting variables
  - Quit: exit()
  - Player: 2-player, 1-player, screen saver (keyboard is overwritten with y-variable)
  - Menu | Personalization | Instructions | Settings : TBA
  - Stop Game and save the state to restart when program restarts

Questions:
- [ ] How would text be cascaded into RECTANGLE and BUTTON but not Paddle and PoneTable

---

# Progressions
- Must have working pong game first

Commenting Functions from 2-Class Pong into Abstract Class Pong
- Put multi-line comments are bottom of each class

Tasks
- [x] Create the template
- [x] Build the Pong Table 
- [x] Build a Ball
- [x] Build the Paddles
- [ ] Build the Fireworks Celebration
- [ ] Build the Score Board
- [ ] Colour Modes
  - Daytime: light mode (black on white)
  - Daytime: dark mode (white on black)
  - Nighttime: yellow on black
- [ ] Build the Buttons:
  - [Basic] QUIT
  - [Intermediate] Two-Player, One-Player, Screen Saver
  - [Advanced] Menu, Personalization
- [ ] Colour Modes
- [ ] 

For rest of tasks: Class Communication in Driver (Objects) | Class Communication in Class (Array List)
- NOTE: Compare and Contrast these driver methods
- [x] Bounce in the Table (especially top and bottom)
- [x] Make the Paddles, left and right
- [x] Bounce the Ball off the Paddles, gets stuck in the net
- [ ] Ball-in-net triggers Scoreboard
- [ ] Ball-in-net triggers Fireworks
- [ ] TBA

Advanced Ideas
- [ ] Easter Eggs, etc.

---

# To Include: 
- Review Abstract Lesson Code
- Add to Sandbox

---
