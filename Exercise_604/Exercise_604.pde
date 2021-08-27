ArrayList widgetList;
PFont stdFont;
Widget buttonForward;
Widget buttonBackward;
Widget buttonOne;
Widget buttonTwo;
int screen;
Screen screenOne, screenTwo;

void setup() {
  Widget buttonForward, buttonBackward, buttonOne, buttonTwo;
  size(500, 400);
  stdFont=loadFont("Cambria-18.vlw"); 
  textFont(stdFont);

  screenOne = new Screen (color(255, 0, 150));
  screenTwo = new Screen (color(0, 0, 150));
  screen = 1;

  buttonOne = new Widget (100, 100, 200, 40, "Button 1", color(255, 0, 0), stdFont, EVENT_BUTTON2);
  buttonTwo = new Widget (100, 100, 200, 40, "Button 2", color(0, 0, 255), stdFont, EVENT_BUTTON1);
  buttonForward = new Widget(100, 200, 200, 40, "Forward", color(0, 200, 50), stdFont, EVENT_BUTTON1);
  buttonBackward= new Widget(100, 200, 200, 40, "Backward", color(0, 255, 255), stdFont, EVENT_BUTTON2);

  screenOne.addWidget(buttonForward);
  screenOne.addWidget(buttonOne);

  screenTwo.addWidget(buttonBackward);
  screenTwo.addWidget(buttonTwo);
}

void draw()
{
  if (screen == 1)
  {
    screenOne.draw();
  } 
  else 
  {
    screenTwo.draw();
  }
}

void mousePressed() {
  if (screen == 1) {
    int event = screenOne.getEvent();
    if (event == EVENT_FORWARD)
    {
      screen = 2;
    }
     
    else if (event == EVENT_BACKWARD)
    {
      println("You can't go backwards");
    }
  } 
  else 
  {
    int event = screenTwo.getEvent();
    if (event == EVENT_BACKWARD) 
    {
      screen = 1;
    } 
    else if (event == EVENT_FORWARD) 
    {
      println("You can't go forwards");
    }
  }
}
