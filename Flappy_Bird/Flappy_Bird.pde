
int birdX = 30;
int birdY = 400;
int pipeX = 400;
int upperPipeY = 0;
int lowerPipeY = 500;
int upperpipeheight = 350;
int lowerpipeheight = 350;
int pipeGap = 100;
int score = 0;
void setup() {
  
  size(800,800);
 
 }
void draw() {
  
background(#0024FF);
fill(#A00306);
rect(pipeX, upperPipeY, 100, upperpipeheight);
fill(#A00306);
rect(pipeX, lowerPipeY, 100, lowerpipeheight);
fill(#00FFFD);
stroke(#000000);
ellipse(birdX, birdY, 50,50);
birdY+=3;
pipeX-=5;
if(intersectsPipes()==true){
  System.exit(0);
}
if(birdY>800) {
  System.exit(0);
}
if(birdX>pipeX+100) {
  score++;
  println("Hi");
}
text("Score:"+0, 10, 10);
teleportpipe();
}
void mousePressed(){
  birdY-=50;
}

void teleportpipe(){
  if(pipeX<=-100) {
    pipeX=700;
    upperpipeheight = (int) random(100,400);
    lowerpipeheight = 800-pipeGap-upperpipeheight;
    lowerPipeY = upperpipeheight+pipeGap;
 }
  
 }
 boolean intersectsPipes() { 
     if (birdY < upperpipeheight && birdX > pipeX && birdX < (pipeX+100)){
          return true; }
     else if (birdY>lowerPipeY && birdX > pipeX && birdX < (pipeX+100)) {
          return true; }
     else { return false; }
}