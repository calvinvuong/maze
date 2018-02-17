  Maze m;
  
  void setup() {
    size(700, 700);
    background(255, 255, 255);
    m = new Maze();
    m.printNodes();
  }
  
  void draw() {
    m.drawNodes();
  }
  
 