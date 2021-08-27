ArrayList widgetList;
PFont stdFont;
Widget widget1;
Widget widget2; 
Widget widget3;
color squareColor;
color borderColor;

void setup() {
  Widget widget1, widget2, widget3;
  size(500, 400);
  stdFont=loadFont("Cambria-18.vlw"); 
  textFont(stdFont);

  widget1=new Widget(100, 100, 100, 40, "red", color(255, 0, 0), stdFont, EVENT_BUTTON1);
  widget2=new Widget(100, 200, 100, 40, "green", color(0, 255, 0), stdFont, EVENT_BUTTON2);
  widget3=new Widget(100, 300, 100, 40, "blue", color(0, 0, 255), stdFont, EVENT_BUTTON3);

  widgetList = new ArrayList();
  widgetList.add(widget1); 
  widgetList.add(widget2);
  widgetList.add(widget3);
}
void draw() {
  background(255);
  for (int i = 0; i<widgetList.size(); i++) 
  {
    Widget aWidget = (Widget) widgetList.get(i);
    if (mouseX > aWidget.x && mouseX < aWidget.x + aWidget.width && mouseY > aWidget.y && mouseY < aWidget.y + aWidget.height) 
    {
      borderColor = color(255, 255, 255);
    } else 
    {
      borderColor = color(0, 0, 0);
    }
    stroke(borderColor);
    aWidget.draw();
  }
  fill(squareColor);
  noStroke();
  rect(350, 200, 40, 40);
 
}

void mousePressed() {
  int event;
  for (int i = 0; i<widgetList.size(); i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX, mouseY);
    
    switch(event) {
    case EVENT_BUTTON1:
      println("button 1!");
      squareColor = color(255, 0, 0);
      break;
    case EVENT_BUTTON2:
      println("button 2!");
      squareColor = color(0, 255, 0);
      break;
    case EVENT_BUTTON3:
      println("button 3!");
      squareColor = color(0, 0, 255);
      break;
    }
  }
}
