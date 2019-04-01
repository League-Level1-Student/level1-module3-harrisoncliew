PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;
boolean passpipe=false;
int birdX = 30;
int birdY = 400;
int pipeX = 400;
int upperPipeY = 0;
int lowerPipeY = 500;
int upperpipeheight = 350;
int lowerpipeheight = 350;
int pipeGap = 100;
int score = 0;
double velocity = 0;
void setup() {
  back = loadImage("flappy bird back.jpg");
  pipeTop = loadImage("pipe top.png");
  pipeBottom = loadImage("bottompipe.png");
  bird = loadImage("toppipe.png");
  bird.resize(50,50);
  size(500,750);
 
 }
void draw() {
  
background(back);
fill(#A00306);
rect(pipeX, upperPipeY, 100, upperpipeheight);
fill(#A00306);
rect(pipeX, lowerPipeY, 100, lowerpipeheight);
fill(#00FFFD);
stroke(#000000);
ellipse(birdX, birdY, 50,50);
velocity+=0.2;
birdY+=velocity;
pipeX-=5;
if(intersectsPipes()==true){
  System.exit(0);
}
if(birdY>800) {
  System.exit(0);
}
if(birdX>pipeX+100 && passpipe==false) {
  score++;
  passpipe=true;
  
}
text("Score:"+score, 10, 10);
teleportpipe();
}
void mousePressed(){
  velocity=-3;
  birdY+=velocity;
}

void teleportpipe(){
  if(pipeX<=-100) {
    pipeX=700;
    upperpipeheight = (int) random(100,400);
    lowerpipeheight = 800-pipeGap-upperpipeheight;
    lowerPipeY = upperpipeheight+pipeGap;
    passpipe=false;
 }
  
 }
 boolean intersectsPipes() { 
     if (birdY < upperpipeheight && birdX > pipeX && birdX < (pipeX+100)){
          return true; }
     else if (birdY>lowerPipeY && birdX > pipeX && birdX < (pipeX+100)) {
          return true; }
     else { return false; }
}