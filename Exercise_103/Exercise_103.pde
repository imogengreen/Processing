int i;
int j;

void setup(){
  size(400, 400);
  noStroke();
  i=0;
  j=-399;
}

void draw(){
  background(255);
  
  rect(i, 50, 60, 60);
  fill(0, 150, 150);
  if(i++==400) i=-400;
  
  rect(j, 50, 60, 60);
  fill (0, 150, 150);
  if(j++==400) j=-400;
}
