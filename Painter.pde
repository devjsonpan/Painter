void setup() {
  background(255);
  size(1500, 950);
  // Buttons For User Interface
  // Stroke
  buttons.add(new Button(75, 125, 75, 75, "line"));
  buttons.add(new Button(240, 125, 75, 75, "dotted line"));
  
  // Color
  buttons.add(new Button(33, 275, 75, 75, "red+"));
  buttons.add(new Button(33, 375, 75, 75, "red-"));
  buttons.add(new Button(118, 275, 75, 75, "green+"));
  buttons.add(new Button(118, 375, 75, 75, "green-"));
  buttons.add(new Button(203, 275, 75, 75, "blue+"));
  buttons.add(new Button(203, 375, 75, 75, "blue-"));
  buttons.add(new Button(288, 275, 75, 75, "grey"));
  buttons.add(new Button(288, 375, 75, 75, "black"));
  
  // Thickness
  buttons.add(new Button(35, 525, 150, 45, "thickness+"));
  buttons.add(new Button(210, 525, 150, 45, "thickness-"));
  
  // Transparency
  buttons.add(new Button(35, 650, 150, 45, "transparency+"));
  buttons.add(new Button(210, 650, 150, 45, "transparency-"));
  
  // Eraser
  buttons.add(new Button(50, 780, 75, 75, "eraser"));
  
  // New Drawing
  buttons.add(new Button(230, 780, 75, 75, "new drawing"));
}

// Universal Variables
String stroke = "line";
ArrayList<Button>buttons = new ArrayList<Button>();
int[] colors = new int[]{0, 0, 0};
int thickness = 25;
int transparency = 255;

void draw() {
  // User Interface Panel
  stroke(100);
  strokeWeight(0);
  fill(100);
  rect(0, 0, 400, 950);
  for (Button b : buttons) {
    b.run();
  }
  
  // Configurations for Line and Dotted Line
  if (mousePressed) {
    stroke(255, 255, 255, 255);
    if (stroke == "dotted line") {
      strokeWeight(0);
      fill(colors[0], colors[1], colors[2], transparency);
      ellipse(mouseX, mouseY, thickness, thickness);
    } else if (stroke == "line") {
      strokeWeight(thickness);
      stroke(colors[0], colors[1], colors[2], transparency);
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
}
