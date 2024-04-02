# Pong-OPP-Ball-Class-Metaphor
Lesson using Ball Class for "Metaphors", includes visual object searching

**UNDER CONSTRUCTION**

Thoughts to Explore
- How the Driver (Main) Program will access the class to initiate different metaphors
- Code & Variables that are added to the Ball Class, encapsulated
- At minimum, the different metaphors can be background distractions
- Metaphors can be foreground interactions
- Pong can turn into a type of Pin Ball game (with ball collisions, see https://github.com/Advanced-App-Dev-and-Deploy/Pong_GUI-Classes-_TeachingVersion)

Lesson Progressions
- Developing a new concept of Ball: star
- Using the Ball Class with a different constructor, accessed from Main (Driver) or from within the class
- Reading Arrays and Array Lists for FOR and FOR-each
- Developing Ball Algorithms so star is inititated in specific parts of the play surface, even with Randomly chosen values
- Developing Ball Algorithm so stars are not overlapping
- Developing movement with the star objects to interact with Pong-ball(s) but

# Grading Notes and Identifiers

### OOP Pong Game ... Passing Grade:
1. Display: not-Landscape will break the program somehow, feedback to user to change the orientation
2. Configuration
   - Paddle speed configurable
   - 2-Player, Single Player, and Screen Saver modes
3. Pong-ball behavior
   - Typical Pong Behavior (bouncing-at-edge and scoring)
   - Does the BALL show it scored? (stuck in the net)
   - Multiple BALLs: one at a time or multiple
4. Paddle behaviour
   - Typical Pong Behavior (bouncing-ball and staying on the screen)
   - Is the paddle movement smooth or interrupted by the other paddle (an issue of coding)
5. BALL interact with Paddle
   - Typical Bounce behaviour (angle of incidence = angle of reflection)
6. Is the scoreboard attached (typical pong behavior) and working
7. Instructions
   - Instructions: how to win a match
   - Instructions on paddle control keyBoard control
8. Is a BALL Initiated after each goal?
9. Does the ScreenSaver Mode illustrate all the above
10. Is the game colour with daytime and night modes? (either button or using OS Time)
11. Is an array or an array list initiated using the Ball Class in a different way (second constructor)?
    - Similar to "Night Sky", "Chase", "Black Hole", "Fireworks"

**Please do not put Mr. Mercer in the difficult position of considering "better than passing items" when not all passing items are completed.**

### OOP Pong Game ... Better than Passing Grade:
1. Display: app breaks and instructions to user are provided
2. Configuration: initial BALL speed configurable?
3. Pong-ball behavior: increase in BALL speed based on player skill
4. Paddle behaviour: do paddle sizes change based on skill
5. BALL interact with Paddle: not typical behaviour
6. Instructions: to CANVAS, not console
7. EASTER EGG: initiating a new Pong-ball by user or BALL Class
8. Array or Array List (if single metaphor or more): interaction with Pong Ball

### OOP Pong Game ... Metaphors ... Better than Passing ...
1. Is the Paddle Class used in a similar way to the Ball Class?
2. More than two constructors (using more metaphors?) in the Ball and Paddle Classes?
3. Scoring a goal is celebrated (i.e. fireworks metaphor)
4. Pong BALL interacts with more than just paddles, walls, and net
   - Question of how is up to you: other Pong BALLs, pinball use of BALL Class or Paddle Class
   - I.e. night sky, chase, and / or black hole metaphors
   - Other ideas up to student
5. Scoreboard: uses ARRAYS or Array-Lists and CLASS(es) to celebrate goals and/or match wins

### OOP godMode Grades
1. Display: algorithm saves user from themselves (developers choice)
2. Player names are configurable and displayed somehow
3. BALL interact with Paddle affects speed when paddle is moving ("Paddle Skill")
4. Paddle behaviour: changing angle of paddle affecting direction and magnitude energy transfer
5. FileIO (CS20): pausing a match and quitting the application can be restarted wtih all configuration and settings returned
   - Includes option not to restart previous match played by specific named players (by configuration)
   - Usually done by .txt
6. Ability to Screenshot godMode-speed level "plays"

**Notice: godMode answers "Is this game Awesome?"**

---

# To Include
- See Beginning Star: Night Sky Metaphor\01 Beginning Star\NightStarsMetaphor
- Chase Metaphor:
- Night Sky: Buggy and then no bugs
- Black Hole Metaphor\Unsecure\Beginning Pure Java Class\03 Driver-type Procedures\Creating Stars with Driver Program Procedure\BlackHole
- Black Hole Metaphor: FullScreen To Review\Black Hole Metaphor\BlackHole_size\ManyMoving_Secure
- Fireworks
  - 03 Fireworks\To Rewrite\Fireworks\Fireworks Initial\Firework_Array
  - 03 Fireworks\To Rewrite\Fireworks\Fireworks Alternate\FireworkArray


---

Combine Night Stars and Chase into Black Hole
- Review the lessons of Night Stars and Chase Metaphors
- Once Coding is complete, review black hole code

Firework
- Example of Firework exploding like in the sky
- Firework stays on the table
- With last mouse click, firework chases in to the black hole of the net where the goal was

Firework Example Behaviors & Easter Eggs
- Magnet Ball
- More than one ball
- Increasing speed based on score

Collisions???

---


Behaviors to Consider in Pong

Teaching Order
- Chase Metaphor
- Night Stars with Midpoints or areas (off edge detection, overlapping detection)
- Black holes (combination of above)
- Fireworks

Additional Notes

Chase Metaphor
- Review basic class design
- Introduces absolute value function by reviewing the random function
  - Instead of (0, 256) or (256) parameters, use formula

Black Holes introduces
- Introduce how Processing works in WINDOWS: must click on screen first
- Introduce a "Start Button": SPACEBAR
- Introduce Quit Button, through keyboard
- What happens when these are coded, according to how a computer thinks
- Pure Java Classes - Mathematics only
  - Thus all visual data must happen in Driver, with Processing.JAVA Classes, or procedures
- Access Modifiers, especially static variables (exist in a class, but accessible everywhere)
  - Public
  - Private
  - Static

---

# To include

Writing algorithms to have a screen saver track the closest ball (x-variable) means writing search code, this introduces String Searches later

---

# To Include

William's Tree Modelling these Metaphors: https://github.com/Advanced-App-Dev-and-Deploy/Pong-OOP-Metaphor-Exemplar

---
