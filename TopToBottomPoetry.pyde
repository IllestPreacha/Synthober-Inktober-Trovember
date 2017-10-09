#a flashing poem that goes along the spine of the sketch


def setup():
    global Txt
    global Headliner
    size(displayWidth,displayHeight)
    Txt = createFont("Georgia",22,True)
    Headliner = createFont("Arial",32,True)

def draw():

    background(150,100,50)

    stroke(175)
    strokeWeight(4)
    line(width/2,0,width/2,height)
    line(0,height/2,width,height/2)
    YposText()


def YposText():
    global Txt
    global Headliner
    
    textFont(Headliner)
    fill(random(200,255))
    
    textAlign(CENTER)
    text("Life coming at you", width/2,40)
    
    textFont(Txt)       
    
    fill(random(210),200,110)
    textAlign(CENTER)
    text("Run or Slide, move how you want to groove.",width/2,160)
    text("shed away the negativity as the sun shines brightly.",width/2,400)
    text("as even the weather can be cold as winter or summertime hot",width/2,640)
    
    fill(100,random(70),110)
    textAlign(LEFT)
    text("just as the words of a lullaby, makes the mind of a baby sooth .",width/2,240)
    text("be as the bold as lions roar or like a mice hunting for cheese, swiftly .",width/2,480)
    text("cause the mind can only do, what you determine is unblocked", width/2, 720)
    
    fill(200,170,random(190))
    textAlign(RIGHT)
    text("no hesistation required, go with the flow of the body.",width/2,320)
    text("as life has no one answer, many avenues can reach the same spot.",width/2,560)