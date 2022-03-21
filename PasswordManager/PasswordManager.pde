/*
  Password manager, med kryptering af passwords.
  
  Dette program er til at opbevare og holde styr på sine passwords.
  Passwordsne bliver opbevaret i en JSON fil, hvor de er krypteret.
  
  Udviklet af Jeppe Rønnow og Kristoffer Nielsen.
*/


// impotere og definere ControlP5 bibilotek
import controlP5.*;
ControlP5 P5;

controlP5.Textfield I;
Textlabel myLabel;

// Initiere JSON
JSONArray users;
JSONObject user;

// DIverse globale variabler
String input;
float x = 200, y = 200;

void setup() {
  // Loader data fra JSON fil
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
  
  // Starter ControlP5
  P5 = new ControlP5(this);
  
  // Diverse funktioner for elve vinduet.
  size(800, 800);
  background(0);
  
  // Starter password skærm
  startFunktion();
}

void draw() {
  
  // Dekryptering af passwords og tegner dem på skærmen.
  if (input != null){
    I.hide();
    background(0);
    drawPass();
    y = 200;
  }
}

// Input void
public void Password(String theText) {
  input = theText;
}
