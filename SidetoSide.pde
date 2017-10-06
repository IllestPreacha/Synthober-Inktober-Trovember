float a = 0;
float b = 0;
boolean c = false;
boolean d = false;
 
void setup() {
  size(400, 400);
}
 
void draw() {
  fill(255);
  fill(0);
  counter();
  textSize(12);
  textAlign(CENTER);
  text("Side to Side Counter", width * 1/2, height / 8);
  text(a, width / 4, height / 2);
  text(b, width * 3 / 4, height / 2);
  textAlign(LEFT);
  text("Sum: " + (a + b), width / 8, height * 6 / 8);
  text("click on either the left or the right to add increments", width / 8, height * 6.5/8);
  text("Pressed any key to reset the counter", width / 8, height * 7/8);
}
 
void mousePressed() {
  if (mouseX < width/2) {
    a++;
  } else {
    b++;
  }
}

void counter()
{
  //boolean and modulo that changes if the number is divisible by 2
  
  if (a % 2 == 0) {
    c = true;
  } else {
    c = false;
  }
  
 if (b % 2 == 0) {
    d = true;
  } else {
    d = false;
  }
  
  //even and odd varation with the color halves representing the change 
 
  if (c == true && d == false) {
    background(200,100,97);
  }
    if (c == true && d == true) {
    background(178,80,200);

}
    if (c == false && d == true) {
     background(110);

}
     if (c == false && d == false) {
     background(100,170,190);

}
  
}

//when the key is pressed the whole counter is reseted

void keyPressed()
{
 a = 0;
 b = 0;
 
}