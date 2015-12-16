void setup(){
  
background(136,255,255);

size(300,300);

rectMode(CENTER);
rect(150,150,250,150);

//top line
line(25,85,275,85);

//bottom line
line(25,215,275,215);

//D-Pad
rect(80,150,25,90);

rect(80,150,90,25);

ellipseMode(CORNER);

//bottom button
ellipse(170,150,40,40);

//top button
ellipse(210,110,40,40);

//top left
point(35,80);

//top right
point(265,80);
}
