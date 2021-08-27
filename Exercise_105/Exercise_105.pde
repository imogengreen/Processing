int i;
int j;
int k;
int l;
float angle1;
float angle2;
float angle3;
float angle4;

void setup(){
  size(400, 400);
  noStroke();
  i=-70;
  j=-470;
  k=400;
  l=800;
  angle1=0.0;
  angle2=0.0;
  angle3=0.0;
  angle4=0.0;
}

void draw(){
  background(255);
  
  fill(0, 100, 100);
  if(i++>=400) i=-400;
  rect(i, (sin(angle1)*70)+100, 70, 70); i++;
  angle1 += 0.1;
  
  fill(0, 100, 100);
  if(j++>=400) j=-400; 
  rect(j, (sin(angle2)*70)+100, 70, 70); j++;
  angle2 += 0.1;
 
  fill (100, 0, 100);
  if(k--<=-70) k=730;
  rect(k, (sin(angle3)*70)+250, 70, 70); k--;
  angle3 += 0.1;
  
  fill(100, 0, 100);
  if(l--<=-70) l=730;
  rect(l, (sin(angle4)*70)+250, 70, 70); l--;
  angle4 += 0.1;
}
