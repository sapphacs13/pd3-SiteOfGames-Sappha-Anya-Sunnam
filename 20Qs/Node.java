public class Node {
    String data;
    Node left, right;
    
    public Node(String d) {
	this.data = d;
    }
    public String toString() {
	return data;
    }
	
    public void setData(String d) { data = d; }
    public int getData() { return data; }
	
    public void setLeft(Node n) { left = n; }
    public Node getLeft() { return left; }

    public void setRight(Node n) { right = n; }
    public Node getRight() { return right; }

}


