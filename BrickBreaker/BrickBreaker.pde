//Brick Breaker game by Anya Hargil
//noStroke();
//Sets the beginning position and direction of the ball
int ballXpos = 200;
int ballYpos = 355;
int ballXdirection = 7;
int ballYdirection = -7;
int bricksXpos = 33;
int[] bricks = {bricksXpos, bricksXpos + 53, bricksXpos + 106, bricksXpos + 159, bricksXpos + 212, bricksXpos + 265};

void setup() {
  noStroke();
  size(400, 400);
  delay(2000);
}

void delay(int delay) {
  int time = millis();
  while(millis() - time <= delay);
}

int[] remove(int[] a, int i) {
  int[] b = new int[a.length - 1];
  int x;
  for(x = 0; x < i; x++) {
    b[x] = a[x];
  }
  x++;
  for(; x < a.length; x++) {
    b[x-1] = a[x];
  }
  return b;
}

void draw() {
    //background
    background(255, 255, 0);
    
    //paddle ball
    fill (0, 0, 0);
    ellipse (ballXpos, ballYpos, 30, 30);
    
    //paddle
    fill (16, 8, 245);
    rect (mouseX-60, 370, 120, 30); //center of paddle follows the mouse's x-position-60 so that the CENTER of the paddle follows the mouse
    
    //draws bricks that were not broken
    fill(235, 17, 17);
    for (int i=0; i<bricks.length; i++){
        rect (bricks[i], 50, 50, 30);
    }
    //makes the ball bounce off the bricks and makes the bricks disappear
    for (int i = 0; i<bricks.length; i++){
        if (ballXpos>bricks[i] && ballXpos<bricks[i]+50 && ballYpos<100 && ballYpos>25){
            ballYdirection *= -1;
            bricks = remove(bricks, i);
        }
    }
    
    //changes the direction of the ball when it hits the left and right sides of the screen
    if (ballXpos<20 || ballXpos>380){
        ballXdirection *= -1;
    }
    //changes the direction of the ball when it hits the cieling
    if (ballYpos<20){
        ballYdirection *= -1;
    }
    //changes the direction of the ball when it hits the paddle
    else if (ballYpos > 350 &&  ballYpos < 400 && ballXpos <= mouseX + 60 && ballXpos >= mouseX - 60){
        ballYdirection *= -1;
    }
    //is supposed to stop the code when the ball goes below the paddle, but i don't know how to stop the code. "break" doesn't work!
    else if (ballYpos>355){
        background(255, 0, 0);
        fill(color(255, 255, 255));
        textSize(40);
        text("YOU LOST!!", 100, 200);
   }
        //stop code
    //moves the ball in the correct x- and y-directions
    ballXpos+=ballXdirection;
    ballYpos+=ballYdirection;
    if(bricks.length == 0) {
      delay(100);
      background(color(0, 0, 0));
      fill(color(255, 255, 255));
      textSize(40);
      text("YOU WON!!", 100, 200);
    }
}

