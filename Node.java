
public class Node {
	
	private Node[] nextNodes = new Node[3]; 
	private int link;
	private int IDNumber;

	public Node(Node nextLeft, Node nextForward, Node nextRight, int link, int idNumber) {
		getNextNodes()[0] = nextLeft;
		getNextNodes()[1] = nextForward;
		getNextNodes()[2] = nextRight;
		setLink(link);
		setIDNumber(idNumber);
	}
	
	public Node(int link, int idNumber) {
		for (int i = 0; i < 3; i++)
			getNextNodes()[i] = null;
		setLink(link);
		setIDNumber(idNumber);
	}
	
	public Node[] getNextNodes() {
		return nextNodes;
	}
	
	public void setNextNodes(Node[] nextNodes) {
		this.nextNodes = nextNodes;
	}

	public int getLink() {
		return link;
	}

	public void setLink(int link) {
		this.link = link;
	}

	public int getIDNumber() {
		return IDNumber;
	}

	public void setIDNumber(int iDNumber) {
		IDNumber = iDNumber;
	}
	
}
