void startFunktion() {
   println("inputBox");
   PFont font = createFont("arial",20);
   
   I = P5.addTextfield("Password")
     .setPosition(width/2-50,height/2-20)
     .setColorBackground(color(50)) 
     .setFont(font)
     .setSize(100,40)
     .setFocus(true)
     .setColor(color(255))
     .setLabel("p")
     ;

  if (input != null){
    print(input);
  }
}
