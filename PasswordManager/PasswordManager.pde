/*
  Password manager, med kryptering af passwords.
  
  Dette program er til at opbevare og holde styr på sine passwords.
  Passwordsne bliver opbevaret i en JSON fil, hvor de er krypteret.
  
  Udviklet af Jeppe Rønnow og Kristoffer Nielsen.
*/


// importere biblioteker til at kunne kopiere ting.
import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
import javax.swing.*;
import java.io.*;

// impotere og definere ControlP5 bibilotek
import controlP5.*;
ControlP5 P5;

controlP5.Textfield Input;
controlP5.Button Newpass;
controlP5.Textlabel Header;
Textlabel myLabel;
controlP5.Button Logout;

// Initiere JSON
JSONArray users;
JSONObject user;

// Initiere objekt array til user data
passObj[] userData = new passObj[0];

// Diverse globale variabler
String decoder;
String input;
String[] inputs = new String[3];
boolean boInput = false;
float x = 200, y = 200;
String temp;
int n = 0;

void setup() {
  // Loader data fra JSON fil
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
  
  for (int i=0;i<users.size();i++){
    userData = (passObj[]) expand(userData, userData.length + 1);
    
    user = users.getJSONObject(i);
    String place = deCode(user.getString("place"));
    
    String username = deCode(user.getString("place"));
    
    String password = deCode(user.getString("place"));
    
    userData[userData.length-1] = new passObj(place, username, password);
    
  }
  // Starter ControlP5
  P5 = new ControlP5(this);
  
  // Diverse funktioner for elve vinduet.
  size(800, 800);
  background(30);
  
  // Starter password skærm
  startFunktion();
}

void draw() {
  
  // Dekryptering af passwords og tegner dem på skærmen.
  if (input != null && decoder == null) decoder = input;
  if (decoder != null){
    Input.hide();
    Header.hide();
    Newpass.show();
    Logout.show();
    background(20);
    drawPass();
    y = 200;
    Input.setPasswordMode(false);
  }
  
  // Indtast nyt password
  if (boInput) {
    newJSONObject();
    Logout.hide();
  }
  
  
  
}

public void controlEvent(ControlEvent theEvent) {
  if (theEvent.getName() == "newPass") {
    temp = input;
    n = 0;
    boInput = true;
  }
  if (theEvent.getName() == "logout") {
    reset();
  }
  if (theEvent.getName().substring(0, 4).equals("user") || theEvent.getName().substring(0, 4).equals("pass")) {
    copyPaste(theEvent.getName());
  }
}

// Input void
public void Password(String theText) {
  input = theText;
}

void reset(){
  background(30);
  input = null;
  decoder = null;
  Input.show();
  Header.show();
  Newpass.hide();
  Logout.hide();
  Input.setPasswordMode(true);
  Input.setLabel("");
}
