/*
 Password manager, med kryptering af passwords.
 
 Dette program er til at opbevare og holde styr på sine passwords.
 Passwordsne bliver opbevaret i en JSON fil, hvor de er krypteret.
 
 Udviklet af Jeppe Rønnow og Kristoffer Nielsen.
 */


// Importere biblioteker til at kunne kopiere ting.
import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
import javax.swing.*;
import java.io.*;

// Impotere og definere ControlP5 bibilotek
import controlP5.*;
ControlP5 P5;

// Definere controlP5 widgets
controlP5.Textfield Input;
controlP5.Button Newpass;
controlP5.Textlabel Header;
Textlabel myLabel;
controlP5.Button Logout;

// Definere JSON object og array
JSONArray users;
JSONObject user;

// Definere Arraylist userData til at skulle opbevare passObj klassen
ArrayList<passObj> userData = new ArrayList<passObj>();

// Definere og initializere diverse globale variabler
String decoder;
String input;
String[] inputs = new String[3];
boolean boInput = false;
float y = 200;
String temp;
int n = 0;

void setup() {
  // Loader data fra JSON fil
  users = loadJSONArray("ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");

  // Starter ControlP5
  P5 = new ControlP5(this);

  // Diverse funktioner for selve vinduet.
  size(1400, 800);
  background(30);

  // Initializere alle controllP5 widgets
  startFunktion();
} // setup() end

void draw() {

  // Når man har skrevet password ind køres dette stykke kode
  if (input != null && decoder == null) {
    decoder = input; // Sæter input til at være decode koden
    float y = 150; // Skal bruges for at kunne tægne passwords på skærmen med samme afstand
    for (int i = 0; i < users.size(); i++) { // Går alt data i JSON filen iggenm og decoder det og ligger det i userData arraylisten
      y += 50;
      user = users.getJSONObject(i); // Henter data fra JSONArrayet
      // Decoder dataen
      String p = deCode(user.getString("place"));
      String u = deCode(user.getString("name"));
      String k = deCode(user.getString("passWord"));
      userData.add(new passObj(p, u, k, y)); // Ligger den decoded data ind i userData arraylisten
    }
  }
  // Hvis man har skrævet sit password køres dette if statement. Tegner hjem skærmen hvor man kan se sine passwords
  if (decoder != null) {
    Input.hide();
    Header.hide();
    Newpass.show();
    Logout.show();
    background(20);
    drawPass(); // Skriver alle passwordsne ud på skærmen
    y = 200;
    Input.setPasswordMode(false);
  }

  // Hvis man har trykket på knappen til at tilføje et nyt password
  if (boInput) {
    newJSONObject(); // Modtager input fra brugeren, kryptere og gemmer til JSON fil
    Logout.hide();
  }
} // draw() end

// Hvis der bliver trykket på en controlP5 knap køres dette void
public void controlEvent(ControlEvent theEvent) {
  // Hvis det er nyt password knappen der bliver trykket på
  if (theEvent.getName() == "newPass") {
    temp = input;
    n = 0;
    boInput = true;
  }
  // Hvis det er logout knappen
  if (theEvent.getName() == "logout") {
    reset(); // Nulstiller programmet, så man skal loggeind igen
  }
} // controlEvent() end

// Når der bliver skrevet noget i et inputfeld
public void Password(String theText) {
  input = theText;
} // Password() end

// Funktion der nulstiller programmet, som havde man startet det fra ny
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
} // reset() end

// Funktion til at styre de knapper der ikke er lavet med controlP5
// Funktionen køres når museknappen slippes
void mouseReleased() {
  // Hvis det er colonen med knap til at kopiere brugernavn
  if (mouseX >= 645 && mouseX <= 695) {
    // Finder det objekt som er blevet trykket på
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-17.5 && mouseY <= data.yPos()+7.5) {
        String toCopy = "user" + i;
        copyPaste(toCopy); // Kalder funktion til at kopiere data
      }
    }
  }
  // Hvis det er colonen med knap til at kopiere password
  if (mouseX >= 1070-25 && mouseX <= 1120-25) {
    // Finder det objekt der er blevet trykket på
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-5-12.5 && mouseY <= data.yPos()+20-12.5) {
        String toCopy = "pass" + i;
        copyPaste(toCopy); // Kalder funktion til at kopiere data
      }
    }
  }
  // Hvis det er colonen med knappen til at slete data
  if (mouseX >= 1170-35 && mouseX <= 1240-35) {
    // Finder det objekt der er blevet trykket på
    for (int i = 0; i < userData.size(); i++) {
      passObj data = userData.get(i);
      if (mouseY >= data.yPos()-5-12.5 && mouseY <= data.yPos()+20-12.5) sletData(i); // Kalder funktion til at slette data
    }
  }
} // mouseReleased() end
