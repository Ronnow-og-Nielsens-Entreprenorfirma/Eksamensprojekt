import controlP5.*;
ControlP5 P5;

controlP5.Textfield I;
Textlabel myLabel;

String input;
boolean acces = false;

void setup() {
  JSONArray users;
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
  
  P5 = new ControlP5(this);
  
  size(800, 800);
  
  startFunktion();
  
}

void draw() {
  background(0);
  
  if (input != null){
    I.hide();
    drawPass();
  }
  
  
  
}

public void Password(String theText) {
  input = theText;
}
