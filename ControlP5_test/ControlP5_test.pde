import controlP5.*;

ControlP5 P5;

String input;

void setup(){
  size(400,300);
  background(255);
  
  PFont font = createFont("arial",20);
  P5 = new ControlP5(this);
    
    P5.addTextfield("input")
       .setPosition(width/2-50,height/2-20)
       .setColorBackground(color(50)) 
       .setFont(font)
       .setSize(100,40)
       .setFocus(true)
       .setColor(color(255))
       ;

}

void draw(){

}

public void input(String theText) {
  input = theText;
}
