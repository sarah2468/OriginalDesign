int p = 0;
void setup()
{
  size(400, 400);
}
void draw()
{
  background(#B2B2B2);
  int o = 50;
  while(o < 480){
  spikyCactus(o, 250);
  succulent(o+100, 250);
  o+=200;
  words(180, 50);
  }
  
  fill(#95EAE8);
  ellipse(p+50, 150, 20, 20);
  ellipse(p+150, 300, 20, 20);
  ellipse(p+250, 50, 20, 20);
  p = p+ 3;
  if (p > 400){
    p=0;
  }
}

void spikyCactus(int x, int y)
{
  stroke(0);
  line(x, y-20, x+10, y-20);
  stroke(255);
  noStroke();
  fill(#277126);
  ellipse(x, y-20, 50, 80);
  ellipse(x, y-80, 50, 80);
  ellipse(x, y-140, 50, 80);
  ellipse(x+20, y-20, 30, 30);
  ellipse(x-20, y-85, 30, 30);
  fill(#7E5B37);
  quad(x-30, y, x-25, y+50, x+50-50+25, y+50, x+50-50+30, y);
  fill(#644716);
  quad(x-30, y, x-25, y+50, x+50-50+5, y+50, x+50-50+15, y);
}

void succulent(int o, int a){
  noStroke();
  fill(#73A294);
  ellipse(o, a-60, 60, 160);
  fill(#7E5B37);
  quad(o-30, a, o-25, a+50, o+50-50+25, a+50, o+50-50+30, a);
  fill(#644716);
  quad(o-30, a, o-25, a+50, o+50-50+5, a+50, o+50-50+15,a);
  noFill();
  stroke(230);
  arc(o, a-65, 50, 150, PI/1.5,PI*2.8/2);
  arc(o+10, a-65, 50, 150, PI/1.5,PI*2.8/2);
  arc(o+6, a-65, 20, 150, PI/1.5,PI*2.8/2);
  arc(o+4, a-70, 20, 130, PI*3.5, PI*9/2);
  arc(o+2, a-70, 50, 140, PI*3.5, PI*9/2);
}
void words(int u, int y){
  fill(#23B487);
  text("Life Succs!", u, y); 
  fill(#F5FFFC);
  text("Life Succs!", u+1, y); 
}