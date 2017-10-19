//adding a nested for loop and some color to a previous done Processing challenge : https://github.com/illestknock/ChallengesforProcessing/blob/master/SecondChallenge.pde
//where you had to print to the console and this time by pressing the a Key, you enter into A CharRoulette


//initializing charRoulette Array
char rotational [] = {
  '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '/', '*'};

//initializing Blockage, Sequencers, Selectors
int Blockage;
int showcase;
int ClickCounter = 0;
int SequenceSelector;
float Selector;
char Header;

void setup()
{
  background(0);
  size(800, 600);
  textAlign(CENTER);
  textSize(20);
  text("Welcome to CharBlockage and wait for the game to commence", width/2, height/2);
  text("When the character is shown on the top you block out as many", width/2, height/1.8);
  text("as you can by clicking on the character", width/2, height/1.6);
}

void draw()
{


  if (mousePressed)
  {
    fill(#081EFF);
    CharBlockaged();
  }

    if (second() % 6 == 0)
    {
      BackgroundSequenece();
      Sequencer();
    }

}

//this returns a char variable for usage in the counter, to highlight when that particular char is prompted by the roulette
//the fills are using hexadecimal notatiom
char CharDisplay(char display)
{
  switch(display) {
  case '!':
    fill(#F2163E);
    break;
  case '@': 
    fill(#EEF216);
    break;
  case '#': 
    fill(#2DF7F6);
  case '/':
    fill(#D311ED);
    break;
  case ')':
    fill(#FFA703);
    break;
  case '*':
    fill(#696FA7);
    break;
  case '%': 
    fill(#F56B4F);
    break; 
  default:
    fill(#16F29F);
    break;
  }
  return display;
}

// by having an array and a random genrator, this will act like a roulette everytime the loop is called
void BackgroundSequenece()
{
  background(0);
  charRoulette();
}

// Used as the Sequencer for the Header which will be prompt to show what symbols , Players should click on
void Sequencer()
{
  Selector = random(9);
  SequenceSelector = round(Selector);
  Header = rotational[SequenceSelector];
  textAlign(CENTER);
  textSize(40);
  CharDisplay(Header);
  text(Header, width/2, 40);
}

// Uses Nested for Loops to act as a Slot/Roulette Machine for the Characters Used

void charRoulette()
{
  char counter;
  for (int i = 80; i < width - 80; i = i+40) {
    for (int j = 120; j < height - 40; j = j+40) {
      float ranx = random(9);
      int  randx = round(ranx);
      counter = rotational[randx];
      CharDisplay(counter);
      textSize(20);
      text(counter, i+20, j);
    }
  }
}

// convert the counter into text format for those to see per screen switch
// the rect inside this function act as a way for the numbers not to overlap each other
void CountertoText(int display)
{
  textSize(20);
  textAlign(CENTER); 
  rectMode(CENTER);
  fill(0);
  rect(width/2,height-40,90,40);
  fill(255);
  text("Score " + display, width/2, height - 40);
}



// will block out the char in that particular area
void CharBlockaged()
{
  rectMode(CENTER);
  rect(mouseX, mouseY, 20, 20);
}

// when mouse is released , it triggers the ClickCounting Function
void mouseReleased()
{
  ClickCounting();
}

// This uses the Clickcounter as means to Collect the Score
void ClickCounting()
{
  ClickCounter ++;
  CountertoText(ClickCounter);
}