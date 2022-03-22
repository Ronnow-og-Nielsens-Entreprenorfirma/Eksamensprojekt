import controlP5.*;
ControlP5 P5;
controlP5.Textfield passwordText;


String input = "";

void setup(){
  size(400,300);
  background(255);
  P5 = new ControlP5(this);
  
  enterPassword();
  
}

void draw(){
  if (input != ""){
    passwordText.hide();
    passwords();
    background(180);
  }
}
