class Ball {
  float x; 
  float y;
  float dx; 
  float dy;
  int radius;
  color ballColor = color(50, 150, 100);

  Ball(){
    x = random(SCREENX/4, SCREENX/2);
    y = random(SCREENY/4, SCREENY/2);
    dx = random(1, 2); dy = random(1, 2);
    radius=8;
  }
  void move(){
    x = x+dx; 
    y = y+dy;
  }
  void draw(){
    fill(ballColor);
    ellipse(int(x), int(y), radius, radius);
  }

  void collisionPlayer(Player tp){
    if(y+radius >= tp.ypos && y-radius<tp.ypos+PADDLEHEIGHT && x >=tp.xpos && x <= tp.xpos+PADDLEWIDTH)
    {
      println("collided!");
      dy=-dy;
    }
  }
  void collisionComputer(Player cp){
    if (y-radius <= cp.ypos+PADDLEHEIGHT && y-radius >= cp.ypos && x >= cp.xpos && x <= cp.xpos+PADDLEWIDTH)
    {
      println("collided!");
      dy=-dy;
    }
  }
  void collisionWithSides(){
    if (x-radius <=0) dx=-dx;
    else if (x+radius >= SCREENX) dx=-dx;
  
  }
}
