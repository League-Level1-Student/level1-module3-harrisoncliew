
int x = 30;
int y = 400;
int x2 = 400;
int y2 = 0;
int x3 = 400;
int y3 = 500;
void setup() {
  size(800,800);
 
 }
void draw() {
background(#0024FF);
fill(#A00306);
rect(x2, y2, 100, 300);
fill(#A00306);
rect(x3, y3, 100, 300);
fill(#00FFFD);
stroke(#000000);
ellipse(x, y, 50,50);
y+=3;
x2-=5;
x3-=5;
teleportpipe();
}
void mousePressed(){
  y-=50;
}

void teleportpipe(){
  if(x2<=-100) {
    x2=700;
  }
  if(x3<=-100) {
    x3=700;
  }
 
}