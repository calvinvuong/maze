public class Maze {
  private Node start;
  private Node end;
  private int numNodes;
  private int maxNodes;
  
  private int[] directionChoices = new int[] {0, 1, 2};
  
  public Maze() {
    start = new Node(0, 0); // no link, id 0
    numNodes = 1;
    maxNodes = 12;
    generate(start);
  }
  
  // generates maze
  // takes a pointer to a node, and generates a "maze" from each node recursively
  public void generate(Node s) {
    if ( numNodes >= maxNodes ) {
      if ( end == null ) // end not set yet
        end = s;
      return;
    }
    
    // number of connections
    int numConnections = (int) (Math.random() * 3) + 1; // 1 to 3 inclusive
    shuffle(directionChoices);
    
    for ( int i = 0; i < numConnections; i++ ) {
      Node c = new Node( (int) (Math.random() * 25) + 50, numNodes++);
      s.setNext(directionChoices[i], c);
      generate(c);
    }
  }
  
  public void printNodes() {
    printNodes(start);
  }
  
  public void printNodes(Node point) {
    if ( point == null )
      return;
    
    System.out.println(point);
    for ( int i = 0; i < 3; i++ ) {
      printNodes(point.getNext(i));
    }
  }
  
  public void drawNodes() {
    drawNodes(start, 200, 600);
  }
  
  public void drawNodes(Node point, int xcor, int ycor) {
    if ( point == null )
      return;
    
    fill(0, 255, 0);
    ellipse(xcor, ycor, 10, 10);
    fill(0, 0, 0);
    text(point.getIDNumber(), xcor, ycor);
    
    // determine new coordinates
    for ( int i = 0; i < 3; i++ ) {
      if ( point.getNext(i) != null ) {
        int newX, newY;
        if ( i == 0 ) {
          newX = xcor - point.getNext(i).getLink();
          newY = ycor;
        }
        else if ( i == 1 ) {
          newX = xcor;
          newY = ycor + point.getNext(i).getLink();
        }
        else { // i == 2
          newX = xcor + point.getNext(i).getLink();
          newY = ycor;
        }
        // draw line representing link
        line(xcor, ycor, newX, newY);
        // recursively draw next nodes
        
        drawNodes(point.getNext(i), newX, newY);
      } // close if
    }
    
  }
  
  private void shuffle(int[] array) {
    for ( int i = 0; i < array.length; i++ ) {
      swap( array, i, (int) (Math.random() * array.length) );
    }
  }
  
  private void swap(int[] array, int pos1, int pos2) {
    int tmp = array[pos1];
    array[pos1] = array[pos2];
    array[pos2] = tmp;
  }
  
  /*
   public static void main(String[] args) {
   Maze m = new Maze();
   m.printNodes();
   }
   */
}
