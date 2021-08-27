final int SCREENX = 400;
final int SCREENY = 500;
final int PADDLEHEIGHT = 25;
final int PADDLEWIDTH = 80;
final int MARGIN = 10;

Player thePlayer;
Ball theBall;
Player computerPlayer;

void settings(){
  size(SCREENX, SCREENY);
 }
 
void setup(){
  noStroke();
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  computerPlayer = new Player(MARGIN);
  theBall = new Ball();
  ellipseMode(RADIUS);
  frameRate(60);
 }
 
void draw() {
  background(255);
  thePlayer.move(mouseX);
  theBall.move();
  computerPlayerMove();
  
  theBall.collisionPlayer(thePlayer);
  theBall.collisionComputer(computerPlayer);
  theBall.collisionWithSides();
  
  thePlayer.draw();
  theBall.draw();
  computerPlayer.draw();
}
