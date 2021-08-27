Alien theAliens[];

final int SCREENX=400;
final int SCREENY=400;
final int GAP=10;
final int ALIEN_ALIVE=0;
final int ALIEN_DEAD=6;
final int FORWARD=0;
final int BACKWARD=1;

void settings(){
  size(SCREENX, SCREENY);
}

void setup() {
  PImage normalImg, explodeImg;
  normalImg= loadImage("Alien.PNG");
  explodeImg = loadImage("Explosion.PNG");
  theAliens = new Alien[10];
  init_aliens(theAliens, normalImg, explodeImg);
  
}
void init_aliens(Alien baddies[], PImage okImg, PImage
  exImg) {
  for (int i=0; i<baddies.length; i++) {
    // This is buggy, what is the problem?
    baddies[i] = new Alien(i*(okImg.width+GAP), 0, okImg, 
      exImg);
  }
}
void draw() {
  background(0);
  for (int i=0; i<theAliens.length; i++) {
    theAliens[i].move();
    theAliens[i].draw();
    if (random(0, 500) < 1)theAliens[i].die();
  }
}
