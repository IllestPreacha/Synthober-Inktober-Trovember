# timer is using the seconds function to trigger the background to change, also isolated the mousebutton to trigger interactivity
counter1 = 0.0
counter2 = 0.0
xpos = 0
speed = 1
timer = second()

def setup():
    size(800, 600)

def draw():
    frameRate(5)
    Movement()
        
# by initializing the global counter, able to make an interactive animation
#using the timer as a way to trigger movements and background movements per set
#by using random, it adds a little extra flare
  
def Movement():
    global counter1
    global counter2
    timer = second()
    if(timer % 2 == 0):
        background(random(255))
        fill(random(255),random(255),random(255))   # Black
        counter1 = counter1 + speed
        ellipse(0 + counter1, height/3.5, 50, 50)
        fill(random(255),random(255),random(255))
        ellipse(0 + counter1, height/2, 50, 50)
        fill(random(255),random(255),random(255))
        ellipse(0 + counter1, height/1.1, 50, 50) 
        fill(random(255),random(255),random(255))
        counter2 = counter2 - speed
        rect(width - 50 + counter2, height/3, 50, 50)
        fill(random(255),random(255),random(255))
        rect(width - 50 + counter2, height/1.5, 50, 50)
        fill(random(255),random(255),random(255))
        rect(width - 50 + counter2, height/7, 50, 50)