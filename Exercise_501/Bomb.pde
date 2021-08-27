class Bomb {
  int x;
  int y;
  PImage bombImg;
  
  Bomb (int xpos, int ypos, PImage bombImg)
  {
    y = ypos;
    x = xpos;
    this.bombImg = bombImg;
  }
  void move()
  {
    y += 1;
  }
  
  void draw()
  {
   image(bombImg, x, y,50,50); 
  }
  
  boolean offScreen()
  {
   if (y >= SCREENY)
   {
     return true;
   }
   else
   {
     return false;
   }
   
  }

}
