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
	
    public void setMessage(String d) {
	message = d;
    }
    public String getMessage() { 
	return message;
    }

    //left node is "no"
    public void setLeft(Node n) { 
	left = n;
    }
    public Node getLeft() {
	return left;
    }

    //right node is "yes"
    public void setRight(Node n) { 
	right = n;
    }

    public Node getRight() { 
	return right; 
    }

    public boolean isQuestion() {
	if (this.getRight() == null && this.getLeft() == null){
	    return false;
	}
	else {
	    return true;
	}
    }

    public void questionTime() {
	if (this.isQuestion()) {
	    System.out.println(this.message);
	    Scanner in = new Scanner(System.in);
	    String answer;
	    answer = in.nextLine();
	    if (answer.equals("y")) {
		this.getRight().questionTime();
	    }
	    else {
		this.getLeft().questionTime();
	    }
	}
	else {
	    Guess();
	}
	
    }

    public void Guess() {
	System.out.println("Is the candy you were thinking of " + this.message + "?");
	Scanner in = new Scanner(System.in);
	String answer;
	answer = in.nextLine();
	if (answer.equals("y")) {
	    System.out.println("The computer guessed your candy correctly! You lost!");
	}
	else {
	    System.out.println("The computer didn't guess your candy correctly! You won!");
	}
    }
  

    public static void main(String[] args) {
	Node first = new Node("Does it have chocolate?");

	//THE FOLLOWING IS FOR ALL THE CHOCOLATE CANDY:

	//"yes" at chocolate
	Node R = new Node("Does it have caramel?");
	Node RR = new Node("Does it have peanut butter?");
	Node RRR = new Node("Does it have a cookie?");

	//set candy
	Node RRRR = new Node("Peanut Butter Twix");
	Node RRRL = new Node("Snickers");

	Node RRL = new Node("Does it have a cookie?");
	Node RRLR = new Node("Twix");
	Node RRLL = new Node("Rolo");

	//"no" at Caramel
	Node RL = new Node("Does it have peanut butter?");
	Node RLR = new Node("Does it have a cookie?");

	//set candy
	Node RLRR = new Node("Peanut Butter Kudos");
	Node RLRL = new Node("Reese's");

	//"no" at Caramel and "no" at Peanut Butter
	Node RLL = new Node("Does it have a cookie?");

	//set candy
	Node RLLR = new Node("Chocolate Wafer");
	Node RLLL = new Node("Chocolate Bar");

	//set order
	first.setRight(R);
	R.setRight(RR);
	RR.setRight(RRR);
	RRR.setRight(RRRR);
	RRR.setLeft(RRRL);
	RR.setLeft(RRL);
	RRL.setRight(RRLR);
	RRL.setLeft(RRLL);
	R.setLeft(RL);
	RL.setRight(RLR);
	RLR.setRight(RLRR);
	RLR.setLeft(RLRL);
	RL.setLeft(RLL);
	RLL.setRight(RLLR);
	RLL.setLeft(RLLL);

	//THE FOLLOWING IS FOR ALL THE NON CHOCOLATE CANDY:

	//"no" at chocolate
	Node L = new Node("Is it individually wrapped?");
	Node LR = new Node ("It is sweet?");
	Node LRR = new Node("Is it sour?");

	//set candy
	Node LRRR = new Node("Airhead Xtremes");
	Node LRRL = new Node ("Lollipop");

	Node LRL = new Node("Is it sour?");
	Node LRLR = new Node("Crybaby");
	Node LRLL = new Node("A mint");

	//"no" at individually wrapped
	Node LL = new Node("Is it sweet?");
	Node LLR = new Node("Is it sour?");

	//set candy
	Node LLRR = new Node("Sour Patch Kids");
	Node LLRL = new Node("Skittles");

	//"no" at sweet
	Node LLL = new Node("Is it sweet?");

	//set candy
	Node LLLR = new Node("Red Hots");
	Node LLLL = new Node("Does not match any search");

	first.setLeft(L);
	L.setRight(LR);
	LR.setRight(LRR);
	LRR.setRight(LRRR);
	LRR.setLeft(LRRL);
	LR.setLeft(LRL);
	LRL.setRight(LRLR);
	LRL.setLeft(LRLL);
	L.setLeft(LL);
	LL.setRight(LLR);
	LLR.setRight(LLRR);
	LLR.setLeft(LLRL);
	LL.setLeft(LLL);
	LLL.setRight(LLLR);
	LLL.setLeft(LLLL);

	//testing
	//System.out.println(RLRL.getMessage());
	//System.out.println(RRRL.getMessage());
	//System.out.println(LRRL.getMessage());
	//System.out.println(LRLL.getMessage());
	System.out.println("Think of a candy! Now answer these simple questions to see if the computer can guess it!");
	System.out.println("Enter 'y' for yes or 'n' for no");
	first.questionTime();

    }
}


