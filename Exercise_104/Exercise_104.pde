int i;
int j;
int k;
int l;

void setup(){
  size(400, 400);
  noStroke();
  i=-70;
  j=-470;
  k=400;
  l=800;
}

void draw(){
  background(255);

  if(i++==400) i=-400;
  fill(150, 0, 150);
  rect(i, 30, 70, 70);

  if(j++==400) j=-400;
  fill(150, 0, 150);
  rect(j, 30, 70, 70);
 
  if(k--==-70) k=730;
  fill(0, 100, 100);
  rect(k, 250, 70, 70);
 
  if(l--==-70) l=730;
  fill(0, 100, 100);
  rect(l, 250, 70, 70);
  
  
}
