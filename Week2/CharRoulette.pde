//adding a nested for loop and some color to a previous done Processing challenge : https://github.com/illestknock/ChallengesforProcessing/blob/master/SecondChallenge.pde
//where you had to print to the console and this time by pressing the a Key, you enter into A CharRoulette


void setup()
{
  size(800, 600);
  textAlign(CENTER);
  textSize(20);
  text("Press any Key to Start the CharRoulette", width/2, height/2);
}

void draw()
{
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

void keyPressed()
{
  background(0);
  charRoulette();
}

// by having an array and a random genrator, this will act like a roulette everytime the loop is called

void charRoulette()
{
  char counter;
  char rotational [] = {
    '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '/', '*'
  };
  for (int i = 0; i < width; i = i+40) {
    for (int j = 0; j < height; j = j+40) {
      float ranx = random(9);
      int  randx = round(ranx);
      counter = rotational[randx];
      CharDisplay(counter);
      textSize(20);
      text(counter, i, j);
    }
  }
}