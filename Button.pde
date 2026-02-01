// class for the buttons
class Button {
  
  int x, y, w, h;
  String function;
  
  Button(int xc, int yc, int wc, int hc, String functionc) {
    x = xc;
    y = yc;
    w = wc;
    h = hc;
    function = functionc;
  }
  
  void run() {
    strokeWeight(0);
    fill(200);
    rect(x, y, w, h);
    
    // Headings for User Interface
    fill(#ffd700);
    textSize(35);
    text("Line", 80, 100);
    text("Dotted", 225, 100);
    text("Color", 150, 250);
    text("Thickness", 125, 500);
    text("Transparency", 100, 625);
    text("Eraser", 40, 750);  
    text("New Drawing", 165, 750); 
    
    // Coordinates of User Mouse
    textSize(20);
    text("X :", 20, 35);
    text("Y :", 120, 35);
    text(mouseX, 50, 35);
    text(mouseY, 150, 35);
    
    // User Note
    text("*NOTE: HOLD DOWN MOUSE TO CHANGE", 23, 905);
    text("COLOR, THICKNESS, AND TRANSPARENCY*", 23, 937);
    
    // Button Decorations
    fill(0);
    textSize(50);
    text("__", 87, 160);   // Line Button
    text("....", 250, 165);  // Dotted Line Button
    text("+", 95, 563);  // Thickness+ Button
    text("_", 275, 545);  // Thickness- Button
    text("+", 95, 688);  // Transparency+ Button
    text("_", 275, 666);  // Transparency- Button
    
    // Text for Color Buttons
    textSize(20);
    
    // Red Buttons
    text("ADD", 52, 300); 
    text("MINUS", 44, 400);
    text("RED", 55, 330);
    text("RED", 55, 430);

    // Green Buttons
    text("ADD", 137, 300);
    text("MINUS", 129, 400);
    text("GREEN", 127, 330);
    text("GREEN", 127, 430);
    
    // Blue Buttons
    text("ADD", 222, 300);
    text("MINUS", 214, 400);
    text("BLUE", 217, 330);
    text("BLUE", 217, 430);
    
    // Grey Button
    text("GREY", 303, 320);
    
    // Black Button
    text("BLACK", 298, 420);
    
    // Eraser Button
    stroke(0);
    strokeWeight(5);
    fill(200);
    rect(62, 800, 50, 35);
    fill(0);
    rect(85, 800, 30, 35);
    
    // New Drawing Button
    line(275, 825, 288, 820);
    line(290, 820, 295, 835);
    noFill();
    arc(265, 820, 50, 50, 0, PI+HALF_PI+QUARTER_PI);
    
    // User Mouse Interactions
    if (x < mouseX && x+w > mouseX && y < mouseY && y+h > mouseY && mousePressed) {
      if (function == "line") {
        stroke = "line";
        colors[0] = 0; 
        colors[1] = 0; 
        colors[2] = 0; 
      } else if (function == "dotted line") {
        stroke = "dotted line";
        colors[0] = 0; 
        colors[1] = 0; 
        colors[2] = 0; 
        
      // Changing Color  
      } else if (function == "red+") {
        colors[0] += 2;   // R increases by 2
      } else if (function == "red-") {
        colors[0] -= 2;   // R decreases by 2
      } else if (function == "green+") {
        colors[1] += 2;   // G increases by 2
      } else if (function == "green-") {
        colors[1] -= 2;   // G decreases by 2
      } else if (function == "blue+") {
        colors[2] += 2;   // B increases by 2
      } else if (function == "blue-") {
        colors[2] -= 2;   // B decreases by 2
      } else if (function == "grey") {
        // changes color to grey
        colors[0] = 128; 
        colors[1] = 128; 
        colors[2] = 128; 
      } else if (function == "black") {
        // changes color to black
        colors[0] = 0; 
        colors[1] = 0; 
        colors[2] = 0; 
        
      // Changing Thickness
      } else if (function == "thickness+") {
        thickness += 1;   // thickness increases by 1
      } else if (function == "thickness-" && thickness >= 1) {  // thickness has to be >= 1
        thickness -= 1;   // thickness decreases by 1
        
      // Changing Transparency
      } else if (function == "transparency+") {
        transparency -= 1;   // transparency decreases by 1 (more transparent)
      } else if (function == "transparency-") {
        transparency += 1;   // transparency increases by 1 (more opaque)
        
      // Eraser
      } else if (function == "eraser") {
        // changes color to white
        transparency = 255;
        colors[0] = 255; 
        colors[1] = 255; 
        colors[2] = 255; 
      
      // New Drawing
      } else if (function == "new drawing") {
        // resets background to white canvas
        background(255);
      } 
    }
  }
}
