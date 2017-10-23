//an army of Pacman comes alive
//a remix of the example of motion in the processing book
// going to add some more functionality later on

Pacman Pac1;
Pacman Pac2; 
Pacman Pac3;
Pacman Pac4; 
Pacman Pac5;
Pacman Pac6;
Pacman Pac7; 
Pacman Pac8;
Pacman Pac9; 
Pacman Pac10;
Pacman Pac11;
Pacman Pac12; 
Pacman Pac13;
Pacman Pac14; 
Pacman Pac15;
Pacman Pac16;
Pacman Pac17; 
Pacman Pac18;
Pacman Pac19; 
Pacman Pac20;

//Sett
void setup() {
  size(800, 600);
  rectMode(RADIUS);
  // setting up the Pacman
  Pac1 = new Pacman(color(#F20A0A), 40, 50, 100, 1, 15, color(#12FFC2), 1, 1); 
  Pac2 = new Pacman(color(#12FFC2), 40, 100, 200, 2, 10, color(#F20A0A), 1, 1);
  Pac3 = new Pacman(color(#A312FF), 40, 150, 300, 3, 0, color(#A312FF), 1, 1);
  Pac4 = new Pacman(color(#DFFF12), 40, 200, 400, 4, 4, color(#F295AB), 1, 1);
  Pac5 = new Pacman(color(#FA1900), 40, 250, 500, 5, 1, color(#67456F), 1, 1);
  Pac6 = new Pacman(color(#277639), 40, 300, 150, 6, 1, color(#A6ACAD), 1, 1); 
  Pac7 = new Pacman(color(#A6ACAD), 40, 350, 250, 7, 1, color(#277639), 1, 1);
  Pac8 = new Pacman(color(#67456F), 40, 400, 350, 8, 0, color(#D8D214), 1, 1);
  Pac9 = new Pacman(color(#D8D214), 40, 450, 450, 9, 0.5, color(#277639), 1, 1);
  Pac10 = new Pacman(color(#F295AB), 40, 500, 500, 10, 4, color(#FA1900), 1, 1);
  Pac11 = new Pacman(color(#BB95F2), 40, 550, 550, 11, 11, color(#DFFF12), 1, 1);
  Pac12 = new Pacman(color(#12FFC2), 40, 100, 200, 12, 9, color(#F20A0A), 1, 1 );
  Pac13 = new Pacman(color(#A312FF), 40, 150, 300, 13, 0.5, color(#A312FF), 1, 1);
  Pac14 = new Pacman(color(#DFFF12), 40, 200, 400, 14, 1, color(#F295AB), 1, 1);
  Pac15 = new Pacman(color(#FA1900), 40, 250, 500, 15, 2, color(#67456F), 1, 1);
  Pac16 = new Pacman(color(#277639), 40, 300, 150, 16, 3, color(#A6ACAD), 1, 1); 
  Pac17 = new Pacman(color(#A6ACAD), 40, 350, 250, 17, 1, color(#277639), 1, 1);
  Pac18 = new Pacman(color(#67456F), 40, 400, 350, 18, 2, color(#D8D214), 1, 1);
  Pac19 = new Pacman(color(#D8D214), 40, 450, 450, 19, 0, color(#277639), 1, 1);
  Pac20 = new Pacman(color(#F295AB), 40, 50, 100, 20, 20, color(#FA1900), 1, 1);
}

void draw() {
  background(0);

  Pac1.motion();
  Pac2.motion();
  Pac3.motion();
  Pac4.motion();
  Pac5.motion();
  Pac6.motion();
  Pac7.motion();
  Pac8.motion();
  Pac9.motion();
  Pac10.motion();
  Pac11.motion();
  Pac12.motion();
  Pac13.motion();
  Pac14.motion();
  Pac15.motion();
  Pac16.motion();
  Pac17.motion();
  Pac18.motion();
  Pac19.motion();
  Pac20.motion();
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
  }
}

  }
