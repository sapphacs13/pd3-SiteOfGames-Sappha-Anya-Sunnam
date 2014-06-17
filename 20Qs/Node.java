import java.util.Scanner;

public class Node {
    String message;
    Node left, right;
    
    public Node(String d) {
	this.message = d;
	left = null;
	right = null;
    }
    public String toString() {
	return message;
    }
	
    public void setMessage(String d) { message = d; }
    public String getMessage() { return message; }

    //left node is "no"
    public void setLeft(Node n) { left = n; }
    public Node getLeft() { return left; }

    //right node is "yes"
    public void setRight(Node n) { right = n; }
    public Node getRight() { return right; }

    //computer is ready to make a guess if there are no more questions
    public boolean isQuestion() {
	if (left == null && right == null) {
	    return false;
	}
	else {
	    return true;
	}
    }

    public void questionTime() {
	if (this.isQuestion()){
	    System.out.println(this.message);
	    System.out.println("Enter 'y' for yes or 'n' for no");
	    Scanner in = new Scanner(System.in);
	    String answer;
	    answer = in.nextLine();
	    if (answer == "y") {
		right.questionTime();
	    }
	    else {
		left.questionTime();
	    }
	}
	else {
	    this.makeGuess();
	}
    }

    public void makeGuess(){
	System.out.println("Were you thinking of " + this.message + "?");
	System.out.println("Enter 'y' for yes or 'n' for no");
	Scanner in = new Scanner(System.in);
	String answer;
	answer = in.nextLine();
	if (answer == "y") {
	    System.out.println("The computer guessed correctly! You lose!");
	}
	else {
	    System.out.println("The computer was not able to guess your candy. You win!");
	}
    }
    public static void main(String[] args) {
	Node foo = new Node("Is it a candy bar?");
	//foo.setLeft("Does it have caramel?");
	System.out.println(foo.getMessage());
    }
}


