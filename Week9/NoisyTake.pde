void setup() 
{
size(800,600);

  
}


void draw() {
  background(204);
  float n = noise(frameCount / 60) * width;
  fill(210 - n,200+ n ,180 + n, 200);
  
  
  rectMode(CORNERS);
  rect(n, 0, n * 5, height);
  
  fill(n + 200 ,255 - n ,180 - n, 150);
  rectMode(CENTER);
  rect(mouseX, 0, n, height);
  
}