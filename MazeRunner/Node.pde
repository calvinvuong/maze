
public class Node {
	
	/** The array of nodes that respectively stores the nodes to the left, front, and right */
	private Node[] nextNodes = new Node[3]; 
	
	/** The length from the previous node */
	private int link;
	
	/** The direction the node si facing */
	private int face;
	
	/** The ID number of the node */
	private int IDNumber;
	
	/** The field that marks if the node is visited by DFS */
	private boolean visited = false; 
	
	/**
	 * The constructor for initializing a node. 
	 * @param link a value of type int that represents the length from the previous node 
	 * @param idNumber a value of type int that represents the id number of the node 
	 * @param face a value of type int that marks the direction of the node 
	 */
	public Node(int link, int idNumber, int face) {
		setLink(link);
		setIDNumber(idNumber);
		setFace(face);
	}
	
	/**
	 * The getter method that returns the array of connecting nodes. 
	 * @return an array of type Node 
	 */
	public Node[] getNextNodes() {
		return nextNodes;
	}
	
	/**
	 * The method that retrieves the connecting nodes. 
	 * @param index respectively sets the input node to the left, front and right for 0, 1, and 2
	 * @return the node object in the designated direction 
	 */
	public Node getNext(int index) {
		return getNextNodes()[index];
	}
	
	/**
	 * The method that sets the connecting nodes 
	 * @param index respectively sets the input node to the left, front and right for 0, 1, and 2
	 * @param node the node to be connected 
	 */
	public void setNext(int index, Node node) {
		getNextNodes()[index] = node;
	}

	/**
	 * The method that retrieves the length to the previous node.  
	 * @return a value of type int that is the distance to the previous node
	 */
	public int getLink() {
		return link;
	}

	/**
	 * The method that sets the length to the previous node.  
	 * @param link a value of type int that is the distance to the previous node
	 */
	public void setLink(int link) {
		this.link = link;
	}
	
	/**
	 * The method that retrieves the direction of the node 
	 * @return a value of type int
 	 */
	public int getFace() {
		return face;
	}
	
	/**
	 * The method that sets the direction of the node
	 * @param face a value of type int that marks the direction of the node
	 */
	public void setFace(int face) {
		this.face = face;
	}

	/** 
	 * The method that retrieves the id number of the node. 
	 * @return the id number in type int 
	 */
	public int getIDNumber() {
		return IDNumber;
	}

	/**
	 * The method that sets the id number of the node. 
	 * @param iDNumber the id number in type int 
	 */
	public void setIDNumber(int iDNumber) {
		IDNumber = iDNumber;
	}

	/**
	 * The method that retrieves whether the nodewas visited by DFS.  
	 * @return true if the node was visited 
	 */
	public boolean isVisited() {
		return visited;
	}

	/**
	 * The method that sets the node to true if the node was visited by DFS.  
	 * @param visited a value of type boolean to determine if the node was visited 
	 */
	public void setVisited(boolean visited) {
		this.visited = visited;
	}
	
/*
	public static void main(String[] args) {
		Node start = new Node(0, 0);
		Node id1 = new Node(2, 1); 
		Node id2 = new Node(3, 2);
		Node id3 = new Node(4, 3);
		
		start.setNext(1, id1);
		id1.setNext(1, id3);
		id1.setNext(2, id2);
		
		System.out.println(start);
		System.out.println(start.getNext(0));
		System.out.println(start.getNext(1));
		System.out.println(start.getNext(2) + "\n-------------");
		System.out.println(id1);
		System.out.println(id1.getNext(0));
		System.out.println(id1.getNext(1));
		System.out.println(id1.getNext(2));
	}
*/
}
