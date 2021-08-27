Alien theAliens[];
Player thePlayer;
ArrayList<Bullet> theBullets;
Bomb theBomb;

void settings() {
  size(SCREENX, SCREENY);
}

void setup() {
  PImage normalImg, explodeImg, bombImg;
  normalImg= loadImage("Alien.PNG");
  explodeImg = loadImage("Explosion.PNG");
  bombImg = loadImage("Bomb.PNG");
  
  theAliens = new Alien[10];
  thePlayer = new Player(SCREENX/2, SCREENY - PLAYERHEIGHT - MARGIN, PLAYERWIDTH, PLAYERHEIGHT);
  init_aliens(theAliens, normalImg, explodeImg);
  theBullets = new ArrayList<Bullet>();
  theBomb = new Bomb(10, 20, bombImg);
}
void init_aliens(Alien baddies[], PImage okImg, PImage exImg) {
  for (int i=0; i<baddies.length; i++) {
    baddies[i] = new Alien(i * (okImg.width)+GAP, 0, okImg, exImg);
  }
}
void draw() {
  background(255);
  thePlayer.move(mouseX);
  thePlayer.draw();
  for (int i=0; i<theAliens.length; i++) {
    theAliens[i].move();
    theAliens[i].draw();
    move_bullet(theBullets);
    draw_bullet(theBullets);
    collide(theBullets);
  }
  theBomb.draw();
  theBomb.move();
}

void mousePressed()
{

  theBullets.add(new Bullet(thePlayer.xpos, thePlayer.ypos));
}

void draw_array (Alien theAlien[])
{
  for (int i = 0; i < theAlien.length; i++)
  {
    theAlien[i].draw();
  }
}

void draw_bullet (ArrayList<Bullet> bullet)
{
  for (int i = 0; i < bullet.size(); i++)
  {
    bullet.get(i).draw();
  }
}

void move_bullet (ArrayList<Bullet> bullet)
{
    for (int i = 0; i < bullet.size(); i++)
  {
    bullet.get(i).move();
  }
}

void collide (ArrayList<Bullet> bullet)
{
  for (int i = 0; i < bullet.size(); i++)
  {
    bullet.get(i).collide(theAliens);
  }
}
