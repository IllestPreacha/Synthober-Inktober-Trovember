 
float max_distance;

void setup() {
  size(800, 600); 
  noStroke();
  max_distance = dist(0, 0, width, height);
}

void draw() {
  
  if (mouseY < 300) {
  background(random(255));
  }
  else
  background(144,37,200);

  for(int i = 0; i <= width; i += 20) {
    for(int j = 0; j <= height; j += 20) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 66;
      rect(i, j, size, size);
      if (mouseX > 400){
      fill(random(100),random(200),random(100));
      }
      else
      fill(255);
      ellipse(i*2, j*2, size, size);
      fill(random(200),random(100),random(200));
    }
  }

  if(mousePressed)
  {
     if (mouseX < 400) {
  background(random(255));
  }
  else
  background(144,37,200);
    
    for(int i = 0; i <= width; i += 40) {
    for(int j = 0; j <= height; j += 40) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * 132;
      rect(i, j, size, size);
      if (mouseY > 300){
      fill(random(100),random(200),random(100));
      }
      else
      fill(255);
      ellipse(i*2, j*2, size, size);
      fill(random(200),random(100),random(200));
    }
  }
  }
}