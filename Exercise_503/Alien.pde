class Alien {
  int x, y, direction;
  int status;
  PImage normalImg, explodeImg;
  float width;
  float height;
  int yposCount;
  Bomb newBomb;
  PImage bombImg;
  
  
  Alien (int xpos, int ypos, PImage okImg, PImage exImg) {
    x = xpos;
    y = ypos;
    status = ALIEN_ALIVE;
    normalImg=okImg;
    explodeImg=exImg;
    direction=FORWARD;
    width = normalImg.width;
    height = normalImg.height;
    newBomb = null;
    bombImg = loadImage("Bomb.PNG");
  }
  void move() 
  {
    if (yposCount == normalImg.height)
    {
      direction = (x < width/2) ? FORWARD : BACKWARD;
      yposCount = 0;
    }
    else if (x + normalImg.width >= SCREENX)
    {
      direction = ALIEN_DOWN; 
    }
    else if (x <= 0)
    {
      direction = ALIEN_DOWN;
    }
    
    if (direction == FORWARD)
    {
      x++;
    }
    else if (direction == BACKWARD)
    {
      x--;
    }
    else if (direction == ALIEN_DOWN)
    {
      y++;
      yposCount++;
    }
    
    if (newBomb != null)
    {
      newBomb.move();
      if (newBomb.offScreen() == true)
      {
        newBomb = null;
      }
      else if (status == ALIEN_ALIVE)
      {
        if (random(0, 200) < 1)
        {
          newBomb = new Bomb(x, y, bombImg);
        }
      }
    }
  }
  void draw(){
    if (status==ALIEN_ALIVE)
    {
      image(normalImg, x, y);
      if (newBomb != null)
      {
        newBomb.draw();
        newBomb.move();
      }
    }
    else if (status!=ALIEN_DEAD) 
    {
      image(explodeImg, x, y);
      status++;
    }
  }
  Bomb getBomb()
  {
    return newBomb;
  }
  
  void die() {
    if (status==ALIEN_ALIVE)
      status++;
  }
}
