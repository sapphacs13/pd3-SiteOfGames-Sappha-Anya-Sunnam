//true if it's the users turn (not the computers)
boolean yourturn;
int numRed;
int numBlack;
ArrayList<Piece> c1;
ArrayList<Piece> c2;
ArrayList<Piece> c3;
ArrayList<Piece> c4;
ArrayList<Piece> c5;
ArrayList<Piece> c6;
ArrayList<Piece> c7;

public class Piece {
  private int col; //0 for black and 1 for red
  private int x;
  private int y;
  
  public Piece(int c, int xc, int yc) {
    col = c;
    x = xc;
    y = yc;
  }
  
  public int getCol() {
    return col;
  }
  
  public int getX() {
    return x;
  }
  
  public int getY() {
    return y;
  }
  
}

void setup(){
  //reset
  clear();
  yourturn = true;
  numRed = 0;
  numBlack = 0;
  c1 = new ArrayList<Piece>();
  c2 = new ArrayList<Piece>();
  c3 = new ArrayList<Piece>();
  c4 = new ArrayList<Piece>();
  c5 = new ArrayList<Piece>();
  c6 = new ArrayList<Piece>();
  c7 = new ArrayList<Piece>();
  
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
  /*if (numBlack < numRed){
    computerTurn();
  }
  else{
  }
  winV();*/
}

void win(int c, int times){
  for (int i = 0; i < 7; i ++){
    try{
      if (c1.get(i).getCol() == c){
        win(c, times, c1.get(i));
        break;
      }
      if (c2.get(i).getCol() == c){
        win(c, times, c2.get(i));
        break;
      }
      if (c3.get(i).getCol() == c){
        win(c, times, c3.get(i));
        break;
      }
    }
    catch(Exception e){
    }
  }
}

void win(int c, int times, Piece p){
   //print(c);
   print(p);
   
}

void delay(int delay) {
  int time = millis();
  while(millis() - time <= delay);
}

void winV(){
  for (int i = 0; i < 3; i ++){
    try{
      if (c1.get(i).getCol() == c1.get(i+1).getCol() &&
          c1.get(i+1).getCol() == c1.get(i+2).getCol() &&
          c1.get(i+2).getCol() == c1.get(i+3).getCol()){
            print(c1.get(i).getCol());
            print("wins");
            delay(1000);
            background(color(0, 0, 255));
            delay(1000);
            text("yay!", 50, 50);
            delay(1000);
            setup();
          }
    }catch(Exception e){
    }
    try{
      if (c2.get(i).getCol() == c2.get(i+1).getCol() &&
          c2.get(i+1).getCol() == c2.get(i+2).getCol() &&
          c2.get(i+2).getCol() == c2.get(i+3).getCol()){
            print(c2.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
    try{
      if (c3.get(i).getCol() == c3.get(i+1).getCol() &&
          c3.get(i+1).getCol() == c3.get(i+2).getCol() &&
          c3.get(i+2).getCol() == c3.get(i+3).getCol()){
            print(c3.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
    try{
      if (c4.get(i).getCol() == c4.get(i+1).getCol() &&
          c4.get(i+1).getCol() == c4.get(i+2).getCol() &&
          c4.get(i+2).getCol() == c4.get(i+3).getCol()){
            print(c4.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
    try{
      if (c5.get(i).getCol() == c5.get(i+1).getCol() &&
          c5.get(i+1).getCol() == c5.get(i+2).getCol() &&
          c5.get(i+2).getCol() == c5.get(i+3).getCol()){
            print(c5.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
    try{
      if (c6.get(i).getCol() == c6.get(i+1).getCol() &&
          c6.get(i+1).getCol() == c6.get(i+2).getCol() &&
          c6.get(i+2).getCol() == c6.get(i+3).getCol()){
            print(c6.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
    try{
      if (c7.get(i).getCol() == c7.get(i+1).getCol() &&
          c7.get(i+1).getCol() == c7.get(i+2).getCol() &&
          c7.get(i+2).getCol() == c7.get(i+3).getCol()){
            print(c7.get(i).getCol());
            print("wins");
          }
    }catch(Exception e){
    }
  }
}

void winH(){
 for(int i = 0; i < 6; i ++){
   try{
     if (c1.get(i).getCol() == c2.get(i).getCol() &&
         c2.get(i).getCol() == c3.get(i).getCol() &&
         c3.get(i).getCol() == c4.get(i).getCol()){
         }
         print(c1.get(i).getCol());
         print("wins");
   }catch (Exception e){
   }
   try{
     if (c2.get(i).getCol() == c3.get(i).getCol() &&
         c3.get(i).getCol() == c4.get(i).getCol() &&
         c4.get(i).getCol() == c5.get(i).getCol()){
         }
         print(c2.get(i).getCol());
         print("wins");
   }catch (Exception e){
   }
   try{
     if (c3.get(i).getCol() == c4.get(i).getCol() &&
         c4.get(i).getCol() == c5.get(i).getCol() &&
         c5.get(i).getCol() == c6.get(i).getCol()){
         }
         print(c3.get(i).getCol());
         print("wins");
   }catch (Exception e){
   }
   try{
     if (c4.get(i).getCol() == c5.get(i).getCol() &&
         c5.get(i).getCol() == c6.get(i).getCol() &&
         c6.get(i).getCol() == c7.get(i).getCol()){
         }
         print(c4.get(i).getCol());
         print("wins");
   }catch (Exception e){
   }
 }
}


void computerTurn(){
  int x = (int)random(7);
  place(x, 0);
}
  
void place(int n, int c){
  fill(color(255, 0, 0));//red piece
  if (c == 0){//black piece
    fill(color(0, 0, 0));
    numBlack ++;
    //print("black=");
    //print(numBlack);
  }
  else{
    numRed ++;
    //print("red=");
    //print(numRed);
  }
  if (n == 0){
   if(c1.size() < 6) {
        Piece p = new Piece(abs(numRed-numBlack), 76, 325-(c1.size()*50));
        ellipse(76, 325-(c1.size()*50), 40, 40);
        c1.add(p);
        yourturn = !yourturn;
   }
   else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
   }
 }
 else if (n == 1){
   if(c2.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 126, 325-(c2.size()*50));
        ellipse(126, 325-(c2.size()*50), 40, 40);
        c2.add(p);
        yourturn = !yourturn;
   }
   else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
   }
 }
 else if (n == 2){
   if(c3.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 176, 325-(c3.size()*50));
        ellipse(176, 325-(c3.size()*50), 40, 40);
        c3.add(p);
        yourturn = !yourturn;
      }
      else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
      }
 }
 else if (n == 3){
   if(c4.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 226, 325-(c4.size()*50));
        ellipse(226, 325-(c4.size()*50), 40, 40);
        c4.add(p);
        yourturn = !yourturn;
      }
      else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
      }
 }
 else if (n == 4){
   if(c5.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 276, 325-(c5.size()*50));
        ellipse(276, 325-(c5.size()*50), 40, 40);
        c5.add(p);
        yourturn = !yourturn;
      }
      else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
      }
 }
 else if (n == 5){
   if(c6.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 326, 325-(c6.size()*50));
        ellipse(326, 325-(c6.size()*50), 40, 40);
        c6.add(p);
        yourturn = !yourturn;
      }
      else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
      }
 }
 else if (n == 6){
   if(c7.size() < 6) {
        Piece p = new Piece(numRed-numBlack, 376, 325-(c7.size()*50));
        ellipse(376, 325-(c7.size()*50), 40, 40);
        c7.add(p);
        yourturn = !yourturn;
      }
      else {
        textSize(20);
        text("Please choose a column that is not full.", 25, 50);
        delay(1000);
        noStroke();
        fill(color(0, 0, 255));
        rect(10, 25, 400, 25);
        stroke(0);
        if (c == 0) {
          numBlack--;
        }
        else {
          numRed--;
        }
        //print(numBlack);
        //print(numRed);
      }
 }
 else{
   print("wrong col");
 }
}

void mouseClicked(){
  if (mouseX > 450 && mouseX < 550 && mouseY > 125 && mouseY < 175){
      setup();
  }
  if(yourturn == true) {
    if (mouseX > 50 && mouseX < 100) {
      place(0, 1);
    }
    else if (mouseX > 100 && mouseX < 150) {
      place(1, 1);
    }
    else if (mouseX > 150 && mouseX < 200) {
      place(2, 1);
    }
    else if (mouseX > 200 && mouseX < 250) {
      place(3, 1);
    }
    else if (mouseX > 250 && mouseX < 300) {
      place(4, 1);
    }
    else if (mouseX > 300 && mouseX < 350) {
      place(5, 1);
    }
    else if (mouseX > 350 && mouseX < 400) {
      place(6, 1);
    }
  }
  if (yourturn == false){
    computerTurn();
  }
  winV();
  winH();
}
