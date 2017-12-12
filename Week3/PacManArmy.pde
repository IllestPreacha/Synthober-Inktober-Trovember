//an army of Pacman comes alive and your job is to click on them to gain points
//if you miss , you lose points
//Easier Version

//SoundBased

import processing.sound.*;

SoundFile ArmySound;

// setting up the clicking events
int Objects = 40; // number of Pacs
int ClickCounter = 0;
color NotFill;

//PacMan Related Variables
Pacman[] Pacs; //making an array of objects
color [] PacFill = {#F20A0A,#12FFC2,#A312FF, #DFFF12,#FA1900,#277639,#A6ACAD,#67456F,#D8D214,#F295AB,#BB95F2,#12FFC2,#A312FF}; //an array of colors
float TransZ = 0; // translation

void setup() {
  size(1200, 800,P3D);
  background(0);
  rectMode(RADIUS);

  Pacs = new Pacman[Objects]; // setting up 40 pacmans

//setting the paramters for the objects array , using round function to put the random float into an int
  for (int counter = 0; counter < Objects; counter++) {
    Pacs[counter] = new Pacman(PacFill[round(random(12))], 40, random(round(10)) * 50, random(round(10)) * 60, random(1.5, 3), random(1.5, 3), PacFill[round(random(11))], 1, 1);
  }
  ArmySound = new SoundFile(this, "ArmySound.wav");//setting up the background music
  //Background Music
  ArmySound.play(); //which is just a recording of Afrobeat2.rb
}

void draw()
{
  background(0);
  for (Pacman Pac : Pacs)  //for loop for arrays
  {
    Pac.motion();
  }
   CountertoText(ClickCounter);
   
}

// Automation of the Pacman Class 
class Pacman { 
  color MotionFill;
  int Radius;
  float XAxis;
  float YAxis;
  float SpeedX;
  float SpeedY;
  color Stroked;
  int directionX;
  int directionY;



  // The Constructor is defined with parameters.  
  Pacman(color tempMotionFill, int tempRadius, float tempXAxis, float tempYAxis, float tempSpeedX, float tempSpeedY, color tempStroked, int tempDirectionX, int tempDirectionY ) { 
    MotionFill = tempMotionFill;
    Radius = tempRadius;
    XAxis = tempXAxis;
    YAxis = tempYAxis;
    SpeedX = tempSpeedX;
    SpeedY = tempSpeedY;
    Stroked = tempStroked;
    directionX = tempDirectionX;
    directionY = tempDirectionY;
  }

  //Motion of Pacman
  void motion() {
    fill(MotionFill);
    pushMatrix(); //contain the translate
    translate(0,0,TransZ);
    XAxis += SpeedX * directionX;
    YAxis += SpeedY * directionY;
 
    if ((XAxis > width-Radius) || (XAxis < Radius)) {
      directionX = -directionX; // Flip direction
    }
    if (directionX == 1) {
      strokeWeight(9);
      stroke(Stroked);
      arc(XAxis, YAxis, Radius, Radius, 0.52, 5.76); // Face right
    } else {
      strokeWeight(5);
      stroke(0);
      arc(XAxis, YAxis, Radius, Radius, 3.67, 8.9); // Face left
    }
    if ((YAxis > height-Radius) || (YAxis < Radius)) {
      directionY = -directionY; // Flip direction
    }
    if (directionY == 1) {
      strokeWeight(11);
      stroke(Stroked);
      arc(XAxis, YAxis, Radius, Radius, 0.52, 5.76); // Face right
    } else {
      strokeWeight(2);
      stroke(110);
      arc(XAxis, YAxis, Radius, Radius, 3.67, 8.9); // Face left
    }
    if(abs(TransZ) == 10)
    {
     TransZ = 0; 
    }
    TransZ += (random(-1.1,1.1)); // Add Depth to the motions
    popMatrix(); //contain the translate
  }
}

void CountertoText(int display)
{
  textSize(20);
  textAlign(CENTER); 
  rectMode(CENTER);
  fill(0);
  //rect(width/2, height-40, 109, 46);
  //rect(width/2 +300, height-40, 109, 55);
  fill(255);
  text("Click on Pacman to Score", width/2 - 270, height-40);
  text("Score " + display, width/2, height-40);
  float time = second();//store the current time
  text("Time " + time, width/2 + 300, height-40);
  textSize(30);
  fill(random(235,255));
  text("Click or Lose", width/2, height/7);
}


// when mouse is released , it triggers the ClickCounting Function
void mouseReleased()
{
  ClickCounting();
}

// This uses the Clickcounter as means to Collect the Score
void ClickCounting()
{
  //when the color is not black ( which are the pacmen) , User Gain Points , if you click on anything else you lose points
  NotFill = get(mouseX, mouseY); 
  if (NotFill != color (0))
  {
    ClickCounter ++;
  } else {
    ClickCounter --;
  }
  CountertoText(ClickCounter);
}