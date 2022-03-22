void enterPassword() {
  PFont font = createFont("arial",20);

  passwordText = P5.addTextfield("input")
     .setPosition(width/2-50,height/2-20)
     .setColorBackground(color(50)) 
     .setFont(font)
     .setSize(100,40)
     .setFocus(true)
     .setColor(color(255))
     ; 
}

void passwords() {
  PFont font = createFont("arial",20);
  
  P5.getTab("default")
     .activateEvent(true)
     .setLabel("Hjem")
     .setId(1)
     .setHeight(height/16) 
     .setWidth(width/8) 
     ;

  P5.getTab("extra")
     .activateEvent(true)
     .setLabel("Opret")
     .setId(2)
     .setHeight(height/16) 
     .setWidth(width/8) 
     ;
     
   P5.addTextarea("koder")
     .setText("Lorem Ipsum is")
     .setPosition(50,50)
     .setSize(100,50)
     .setFont(font)
     .setColor(255)
     .setColorBackground(50);
   
   P5.addTextfield("kodeInput")
     .setPosition(width/2-50,height/2-20)
     .setColorBackground(color(50)) 
     .setFont(font)
     .setSize(100,40)
     .setFocus(true)
     .setColor(color(255))
     ; 
  P5.getController("kodeInput").moveTo("extra");
}
