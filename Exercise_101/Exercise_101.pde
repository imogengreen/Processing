int i;
int j;
int k;
 

void setup(){
  size(300, 300);
  noStroke();
  i = 50;
  j = 90;
  k = 130;
}

void draw (){
  background(255);
  fill(255, 0, 0);
  rect(i, 50, 60, 60); i--;
  
  fill(0, 0, 255);
  rect(130, k, 60, 60); k++;
  
  fill(0, 255, 0);
  rect(j, 90, 60, 60); j++;
  
}

  
