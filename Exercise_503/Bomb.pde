class Bomb {
  int xpos;
  int ypos;
  PImage bombImg;
  float height;
  float width;

  Bomb (int xpos, int ypos, PImage bombImg)
  {
    this.ypos = ypos;
    this.xpos = xpos;
    this.bombImg = bombImg;
    height = bombImg.height;
    width = bombImg.width;
  }
  void move()
  {
    ypos += 1;
  }

  void draw()
  {
    image(bombImg, xpos, ypos, 50, 50);
  }

  boolean offScreen()
  {
    if (ypos >= SCREENY)
    {
      return true;
    } 
    else
    {
      return false;
    }
  }
  boolean collide()
  {
    if (thePlayer.ypos + PLAYERHEIGHT >= ypos+50
      && thePlayer.ypos <= ypos+50
      && thePlayer.xpos <= xpos+50
      && thePlayer.xpos + PLAYERWIDTH >= xpos) 
    {
      return true;
    } 
    else
    {
      return false;
    }
  }
}
