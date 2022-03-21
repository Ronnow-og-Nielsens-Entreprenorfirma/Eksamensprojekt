import controlP5.*;
ControlP5 P5;

controlP5.Textfield I;
Textlabel myLabel;

JSONArray users;
JSONObject user;

String input;
float x = 200, y = 200;
boolean drawn = false;

void setup() {
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
  
  P5 = new ControlP5(this);
  
  size(800, 800);
  
  startFunktion();
}

void draw() {
  background(0);
  
  if (input != null && !drawn){
    I.hide();
    drawPass();
    y = 200;
  }
  
  
  
}


public void Password(String theText) {
  input = theText;
}
