
public class Node {
	
	/** The array of nodes that respectively stores the nodes to the left, front, and right */
	private Node[] nextNodes = new Node[3]; 
	
	/** The length from the previous node */
	private int link;
	
	/** The ID number of the node */
	private int IDNumber;
	
	/** The field that marks if the node is visited by DFS */
	private boolean visited = false; 
	
	/**
	 * The constructor for initializing a node. 
	 * @param link a value of type int that represents the length from the previous node 
	 * @param idNumber a value of type int that represents the id number of the node 
	 */
	public Node(int link, int idNumber) {
		setLink(link);
		setIDNumber(idNumber);
	}
	
	/**
	 * The getter method that returns the array of connecting nodes. 
	 * @return an array of type Node 
	 */
	public Node[] getNextNodes() {
		return nextNodes;
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
	
}
