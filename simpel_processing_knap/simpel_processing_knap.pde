float x = 100;
float y = 50;
float w = 150;
float h = 80;
boolean click = false;

void setup(){
 size(500,500);
 stroke(0);
 noFill();
}

void draw(){
 background(50);
 rect(x,y,w,h);
 fill(255);
 if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) fill(200);
 if (click){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   println("The mouse is pressed and over the button");
   fill(80);
   click = false;
   //do stuff 
  }
 } 
}

void mouseReleased(){
  click = true;
}
