//Remix of https://github.com/illestknock/ChallengesforProcessing/blob/master/DailyChallengeDay1
// Borders Gradually Eat the Interior


void setup ()
{
  size (1500,1500);
  frameRate(random(1,3));
}

void draw ()
{
  float x = random (0,300);
  float y = x / (noise(frameCount / 60));

  strokeWeight(frameCount); // thickens the line with every frame that passes
  stroke(frameCount,frameCount* 2,frameCount * 3); //color Values changes
  background (random(70,102),random(100,170),random(200,255));
  fill(110 - y ,84 + y,210 - x,100);
  rect(97 + x +x,x,100 + y + x,y);
  colorshift ();
}


void colorshift ()
{
 float shift = 100;
 float rq = random(0,155);

 float move = random (-155,155);
 float move2 = random (-155,155);
  
  fill (random(50,100),random(150,200),random (0,122), 100);
  rectMode(RADIUS);
  rect (frameCount/2 + move2,400 + move2,shift,shift);
  rectMode(CORNERS);
  rect (600 + move,600 + move2, shift*2,shift*2);
  fill (shift + rq, 255 - rq, 0 + rq, 110);
  rectMode(CENTER);
  rect (200+ move,200 + move2, shift,shift);
  rectMode(CORNER);
  rect (100 + move ,100 + frameCount/2, shift,shift);
  
  
}