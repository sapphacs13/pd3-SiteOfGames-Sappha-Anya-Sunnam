

void setup(){
  //setup background
  size(600, 400);
  background(color(0, 0, 255));
  //setup grid
  for (int i = 50; i <= 300; i += 50){
    for (int j = 50; j <= 300; j += 50){
      fill(color(255, 255, 51));
      rect(i, j, 50, 50);
    }
  }
}

void draw(){
}
  

void mouseClicked(){
  if (pmouseX > 50 && pmouseX < 100){
    //puts a new ellipse on this loc with a random color
    fill(color(random(255), random(255), random(255)));
    ellipse(50, 50, 50, 50);
  }
}


/*void play(){
    
  if (mouseClicked()) {
    
  }
  
}*/



