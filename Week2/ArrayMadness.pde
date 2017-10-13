int amount  = 300;

// Setting up the arrays 
float [] Bigness = new float [amount];
float [] xPosCircle = new float [amount];
float [] yPosCircle = new float [amount];
float [] xPosSquare = new float [amount];
float [] yPosSquare = new float [amount];
float [] xPosPoint = new float [amount];
float [] yPosPoint = new float [amount];

//This portion goes with the KeyPress function
int KeyCounter = 0;
int KeyRatio = 0;

void setup() {
  size(800, 600);
  textSize(32);
  textAlign(CENTER);
  fill(255);
  ShapeSetup();
}


void draw() {
  frameRate(15);
  BackgroundReset();
  BGCircles();
  fill(110, 119, random(220, 255));
  text("Every Key Pressed Alters the Background", width/2, 40);
  text("Keys Been Pressed: " + KeyCounter + " times", width/2, 560);
}

//Setting up the arrays for the shape and making them not affected by the elements of the draw function by placing them in the setup function

void ShapeSetup()
{
  for (int i=0; i<amount; i++)
  {
    Bigness[i] = random(0, 45);
    xPosCircle[i] = random(0, width);
    yPosCircle[i] = random(100, height - 100);
    xPosSquare[i] = random(0, width);
    yPosSquare[i] = random(100, height - 100);
    xPosPoint[i] = random(0, width);
    yPosPoint[i] = random(100, height - 100);
  }
}

// Circle Setup
void BGCircles()
{
  for (int i=0; i<amount; i++)
  {
    smooth();
    fill(255);
    strokeWeight(random(3, 7));
    fill(10, random(200), random(200), random(200));
    ellipse(xPosCircle[i], yPosCircle[i], Bigness[i], Bigness[i]);
  }
}

// Sqaures Setup
void Squares()
{
  for (int i=0; i<amount; i++)
  {
    smooth();
    fill(0);
    strokeWeight(random(3, 7));
    fill(17, random(255), random(255), random(255));
    rect(xPosSquare[i], yPosSquare[i], Bigness[i], Bigness[i]);
  }
}

//Point
void Threesides()
{
  for (int i=0; i<amount; i++) 
  {
    smooth();
    fill(255);
    strokeWeight(random(11, 17));
    fill(17, random(100), random(100), random(100));
    point(xPosPoint[i], yPosPoint[i]);
  }
}

void BackgroundReset()
{
  if (keyPressed) {
    KeyCounter++;
  }
  KeyRatio = KeyCounter % 5; // use modulo and the KeyCounter To Pointgger cases that will go on 5 times 

  // switch will take the key Ratio to make it as a case base function

  switch(KeyRatio) {
  case 1:
    background(117, 190, 224);
    Squares();
    break;
  case 2: 
    background(190, 224, 117);
    Squares();
    Threesides();
    break;
  case 3: 
    background(224, 190, 117);
    break;
  case 4: 
    background(117, 224, 190);
    Threesides();
    break;
  default:
    background(224, 117, 190);
    break;
  }
}