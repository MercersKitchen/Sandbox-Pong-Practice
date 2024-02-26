# Encapsulated Global vs. Class Variable Confusion
CS30 Daily Lessons

Background information
- trigger a Ball-Constructor to populate a Global Fireworks-Array with mouseX & mouseY
- move the FOR-Loop reading in the Ball-Constructor to the Fireworks-Array ... to a Driver-Method
- then, move the Driver-Method to a Ball-Class Method
- then, access the FOR-Loop Ball-Class Method from DRIVER-Level Ball-Instance

CONFUSION: Global Variaible "gravity" confused by Ball-Class Global Variable "gravity"
- FIREWORKs will work as a DRIVER-Method
- FIREWORKs will behave like a Pong-Ball instance when method moved to Ball-Class, initiated inside Ball Instance

SOLUTION:
- see Ball-CLass void goalExplosion(){}

Change: fireworks[i] = new Ball(xParameter, yParamter, gravity);
To: fireworks[i] = new Ball(xParameter, yParamter, gravityParameter);

---

# To Do List

---
