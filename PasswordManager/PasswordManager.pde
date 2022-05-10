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
ArrayList<passObj> userData = new ArrayList<passObj>();

// Diverse globale variabler
String decoder;
String input;
String[] inputs = new String[3];
boolean boInput = false;
float y = 200;
String temp;
int n = 0;
//boolean newPass = false;

void setup() {
  // Loader data fra JSON fil
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");

  // Starter ControlP5
  P5 = new ControlP5(this);

  // Diverse funktioner for elve vinduet.
  size(1400, 800);
  background(30);

  // Starter password skærm
  startFunktion();
}

void draw() {

  // Dekryptering af passwords og tegner dem på skærmen.
  if (input != null && decoder == null) {
    decoder = input;
    float y = 150;
    for (int i = 0; i < users.size(); i++) {
      y += 50;
      user = users.getJSONObject(i);
      String p = deCode(user.getString("place"));
      String u = deCode(user.getString("name"));
      String k = deCode(user.getString("passWord"));
      userData.add(new passObj(p, u, k, y));
    }
  }
  if (decoder != null) {
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
}

// Input void
public void Password(String theText) {
  input = theText;
}

void reset() {
  background(31);
  input = null;
  decoder = null;
  Input.show();
  Header.show();
  Newpass.hide();
  Logout.hide();
  Input.setPasswordMode(true);
  Input.setLabel("");
  userData.clear();
}

void mouseReleased() {
  if (mouseX >= 645 && mouseX <= 695) {
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-17.5 && mouseY <= data.yPos()+7.5) {
        String toCopy = "user" + i;
        copyPaste(toCopy);
      }
    }
  }
  if (mouseX >= 1070-25 && mouseX <= 1120-25) {
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-5-12.5 && mouseY <= data.yPos()+20-12.5) {
        String toCopy = "pass" + i;
        copyPaste(toCopy);
      }
    }
  }
  if (mouseX >= 1170-35 && mouseX <= 1240-35) {
    println("slet");
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-5-12.5 && mouseY <= data.yPos()+20-12.5) sletData(i);
      }
    }
  }
