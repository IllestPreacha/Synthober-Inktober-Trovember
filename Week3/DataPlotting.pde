//Taking the Data Example : 12.2 and using the Top 40 recievers in NFL and doa  visual Representation + Correlation

int[] Receptions;
int[] RecYards;

void setup() {
  size(480,300);
  //top 40 nfl recievers in yaradage
  Table Recievers = loadTable("D2.tsv");
  int rowCount = Recievers.getRowCount();
  int Yardcount = Recievers.getRowCount();
  Receptions = new int[rowCount];
  RecYards =  new int[Yardcount];
  //for checking the correlation between yardage and receptions
  for (int i = 0; i < Receptions.length; i++) {
    Receptions[i] = Recievers.getInt(i, 4);
    RecYards[i] = Recievers.getInt(i, 7);
  }
}

void draw() {

  GridLines();
  RecS();
  info();
}

void GridLines()
{
   background(122);
  // Draw background grid for data
  stroke(255);
  line(20, 100, 20, 20);
  line(20, 100, 460, 100);
  for (int i = 0; i < Receptions.length; i++) {
    float x = map(i, 0, Receptions.length-1, 20, 540);
    line(x, 20, x, 100);
  }
}

void info()
{
  textSize(22);
  textAlign(CENTER); 
  rectMode(CENTER);
  fill(0);
  text("Correlations Amongst top 40 Recievers", width/2, height - 120);
  textSize(12);
  fill(#11DEF7);
  text("Receptions Less than 34 and Less than 58 YPG", width/2, height-68);
  fill(#1CF711);
  text("Receptions Less than 34 and More than 58 YPG", width/2, height-50);
  fill(#1811F7);
  text("Receptions More than 34 and More than 58 YPG", width/2, height-32);
  fill(#F7EC11); 
  text("Receptions More than 34 and Less than 58 YPG", width/2, height-14);
  
}

void RecS()
{
  // Draw circles based on receptions that were based in order of total yardage and if it were based on 7 games
  for (int i = 0; i < Receptions.length; i++) {
    float x = map(i, 0, Receptions.length-1, 20, 460);
    float y = map(Receptions[i], 0, 60, 100, 20);
    stroke(204, 51, 0);
    if (Receptions[i] < 34 && RecYards[i] < 58 ) // using 34 as a based
    {
    fill(#11DEF7);
    }
    else if(Receptions[i] < 34 && RecYards[i] > 58 )  {
    fill(#1CF711);  
    }
    else if(Receptions[i] > 34 && RecYards[i] > 58 ){
     fill(#1811F7); 
    }
    else if(Receptions[i] > 34 && RecYards[i] < 58){
    fill(#F7EC11);  
    }
    
    ellipse(x, y, 10,10);
  }
}