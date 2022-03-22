
// Laver skærm med Input for dekrypterings password.

void startFunktion() {
   println("inputBox");
   PFont font = createFont("arial",20);
   
   Input = P5.addTextfield("Password")
     .setPosition(width/2-50,height/2-20)
     .setColorBackground(color(50)) 
     .setFont(font)
     .setSize(100,40)
     .setFocus(true)
     .setColor(color(255))
     .setLabel("Password")
     ;
     
  font = createFont("arial", 10);   
  Newpass = P5.addButton("newPass")
    .setPosition(100, 100)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("New password")
    .hide()
    ;
    
}
