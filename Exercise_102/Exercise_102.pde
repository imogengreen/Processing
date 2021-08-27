int i;

void setup (){
  size(300, 300);
  noStroke();
  i = 0;
}

void draw(){
  background(255);
  rect(i, 50, 60, 60);
  fill(0, 150, 150);
  if(i++==300) i=0;
}
