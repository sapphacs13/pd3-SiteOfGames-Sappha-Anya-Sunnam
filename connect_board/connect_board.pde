//true if it's the users turn (not the computers)
boolean yourturn = true;
int numRed = 0;
int numBlack = 0;
ArrayList<Piece> c1 = new ArrayList<Piece>();
ArrayList<Piece> c2 = new ArrayList<Piece>();
ArrayList<Piece> c3 = new ArrayList<Piece>();
ArrayList<Piece> c4 = new ArrayList<Piece>();
ArrayList<Piece> c5 = new ArrayList<Piece>();
ArrayList<Piece> c6 = new ArrayList<Piece>();
ArrayList<Piece> c7 = new ArrayList<Piece>();

public class Piece {
}

void setup(){
  //setup background
  size(600, 400);
  background(color(0, 0, 255));
  //setup grid
  for (int i = 50; i <= 350; i += 50){
    for (int j = 50; j <= 300; j += 50){
      fill(color(255, 255, 51));
      rect(i, j, 50, 50);
    }
  }
  fill(color(255, 255, 51));
  rect(450, 125, 100, 50);
  fill(color(0, 0, 0));
  textSize(32);
  text("reset", 460, 160);
}

void draw(){
  
  /*if (numBlack > numRed){
    yourturn = true;
  }
  else{
    yourturn = false;
  }*/
  
}
  

void mouseClicked(){
  if(yourturn == true) {
    fill (color (255, 0, 0));
    numRed ++;
  }
  else {
    fill(color(0, 0, 0));
    numBlack ++;
  }
  if (mouseX > 50 && mouseX < 100) {
    if(c1.size() < 6) {
      Piece p = new Piece();
      ellipse(76, 325-(c1.size()*50), 40, 40);
      c1.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 100 && mouseX < 150) {
    if(c2.size() < 6) {
      Piece p = new Piece();
      ellipse(126, 325-(c2.size()*50), 40, 40);
      c2.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 150 && mouseX < 200) {
    if(c3.size() < 6) {
      Piece p = new Piece();
      ellipse(176, 325-(c3.size()*50), 40, 40);
      c3.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 200 && mouseX < 250) {
    if(c4.size() < 6) {
      Piece p = new Piece();
      ellipse(226, 325-(c4.size()*50), 40, 40);
      c4.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 250 && mouseX < 300) {
    if(c5.size() < 6) {
      Piece p = new Piece();
      ellipse(276, 325-(c5.size()*50), 40, 40);
      c5.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 300 && mouseX < 350) {
    if(c6.size() < 6) {
      Piece p = new Piece();
      ellipse(326, 325-(c6.size()*50), 40, 40);
      c6.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  if (mouseX > 350 && mouseX < 400) {
    if(c7.size() < 6) {
      Piece p = new Piece();
      ellipse(376, 325-(c7.size()*50), 40, 40);
      c7.add(p);
      yourturn = !yourturn;
    }
    else {
      textSize(20);
      text("Please choose a column that is not full.", 25, 50);
    }
  }
  else if (mouseX > 450 && mouseX < 550 && mouseY > 125 && mouseY < 175){
    clear();
    setup();
  }
}


/*void play(){
    
  if (mouseClicked()) {
    
  }
  
}*/

