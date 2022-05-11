// Startfunktion kaldes når programmet starter. Det initialisere alle P% widgets
void startFunktion() {
  PFont font = createFont("arial", 35); // Vælger font og størrelse

  // Laver input boxen
  Input = P5.addTextfield("Password")
    .setPosition(width/2-100, height/2-25)
    .setColorBackground(color(50)) 
    .setFont(font)
    .setSize(200, 50)
    .setFocus(true)
    .setColor(color(255))
    .setLabel("")
    .setPasswordMode(true)
    ;

  // Laver header til diverse skærme
  Header = P5.addTextlabel("header")  
    .setPosition(width/2-175, height/5)           
    .setFont(createFont("arial", 50))
    .setText("Enter Password")
    ;

  font = createFont("arial", 15); // Vælger font og størelse
  // Laver nyt password knappen
  Newpass = P5.addButton("newPass")
    .setPosition(100, 100)
    .setFont(font)
    .setSize(150, 40)
    .setLabel("New password")
    .hide()
    .setColorBackground(color(0, 100, 0))
    .setColorForeground(color(0, 50, 0)) 
    ;

  // Laver logout knappen
  Logout = P5.addButton("logout")
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Logout")
    .hide()
    .setColorBackground(color(100, 0, 0))
    .setColorForeground(color(50, 0, 0)) 
    ;
} // startFunktion() end
