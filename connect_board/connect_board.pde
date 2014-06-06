
//true if it's the users turn (not the computers)
boolean yourturn = false;
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
}

void draw(){
}
  

void mouseClicked(){
//fill color
  if (yourturn == true) {
      fill (color (255,0,0));
  }
  else {
      fill(color(0,0,0));
  }
  //put in column
  if (mouseX > 50 && mouseX < 100){
    Piece p = new Piece();
    ellipse(76, 325-(c1.size()*50), 40, 40);
    c1.add(p);
  }
  if (mouseX > 100 && mouseX < 150){
    Piece p = new Piece();
    ellipse(126, 325-(c2.size()*50), 40, 40);
    c2.add(p);
  }
  if (mouseX > 150 && mouseX < 200){
    Piece p = new Piece();
    ellipse(176, 325-(c3.size()*50), 40, 40);
    c3.add(p);
  }
  if (mouseX > 200 && mouseX < 250){
    Piece p = new Piece();
    ellipse(226, 325-(c4.size()*50), 40, 40);
    c4.add(p);
  }
  if (mouseX > 250 && mouseX < 300){
    Piece p = new Piece();
    ellipse(276, 325-(c5.size()*50), 40, 40);
    c5.add(p);
  }
  if (mouseX > 300 && mouseX < 350){
    Piece p = new Piece();
    ellipse(326, 325-(c6.size()*50), 40, 40);
    c6.add(p);
  }
  if (mouseX > 350 && mouseX < 400){
    Piece p = new Piece();
    ellipse(376, 325-(c7.size()*50), 40, 40);
    c7.add(p);
  }
}


/*void play(){
    
  if (mouseClicked()) {
    
  }
  
}*/



