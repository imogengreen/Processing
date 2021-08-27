class Screen
{
  ArrayList<Widget> widgetList;
  color background;

  Screen (color background)
  {
    this.background = background;
    widgetList = new ArrayList<Widget>();
  }

  int getEvent() {
    for (Widget widget : widgetList)
    {
      int event = widget.getEvent(mouseX, mouseY);
      if (event!=0)
      {
        return event;
      }
    }
    return 0;
  }

  void draw() {
    background(background);
    if (!widgetList.isEmpty()) {
      for (Widget widget : widgetList) {
        color borderColor;
        if (mouseX > widget.x && mouseX < widget.x + widget.width && mouseY > widget.y && mouseY < widget.y + widget.height) {
          borderColor = color(255, 255, 255);
        } else {
          borderColor = color(0, 0, 0);
        }
        stroke(borderColor);
        widget.draw();
      }
    }
  }
  void addWidget(Widget widget)
  {
    widgetList.add(widget);
  }
}
