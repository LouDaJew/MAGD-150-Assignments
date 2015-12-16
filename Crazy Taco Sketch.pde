 int tacoX = 100, tacoY = 100, sizeX, sizeY;
int hotX = 300, hotY = 100;
int pressedState = 0;

void setup(){
  size (800,600);
  background(135,23,15);
  tacoX = 400;
  tacoY = 450;
  sizeX = 100;
  sizeY = 100;
}

void draw(){
  randomizePos();
  displayTaco();
  
  for (int x=1; x < 10; x++){
    noFill();
    ellipse(width/5, height/2, (x*20), (x*20));
  }
  
  for (int x=1; x < 20; x++){
    noFill();
    ellipse(width/1, height/1, (x*20), (x*20));
  }
  
  for (int x=1; x < 15; x++){
    noFill();
    ellipse(width/1.5, height/5, (x*20), (x*20));

  }
   //taco
  println(tacoX);
  fill(218,215,144);
  stroke(218,215,144);
  
  //taco shell + fillings
  //back shell
  arc(tacoX+25, tacoY,200,175,PI,TWO_PI);
  //meat
  fill(139, 69, 19);
  arc(tacoX+22, tacoY,200,175,PI,TWO_PI);
  //lettuce
  fill(10,199,73);
  arc(tacoX+22, tacoY-20,200,150,PI,TWO_PI);
  //cheese
  fill(255,201,52);
  arc(tacoX+20, tacoY-40,190,120, PI,TWO_PI);
 // stroke(0);
  
 //front shell
  fill(218,215,144);
  arc(tacoX, tacoY,200,175,PI,TWO_PI);

}

void randomizePos(){
  tacoX = round(random(-5, 5)) + tacoX;
  tacoY = round(random(-5,5)) + tacoY;
}

void displayTaco(){
   arc(tacoX, tacoY, sizeX, sizeY, PI, TWO_PI);
   tacoX = round (random(-10, 10)) + tacoX;
   tacoY = round (random(-10, 10)) + tacoY;
}

void mousePressed(){
  background(0,255,0);
}
void keyPressed(){
  background(135,23,15);
}
