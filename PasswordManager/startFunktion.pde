boolean startFunktion() {
   P5 = new ControlP5(this);
   
   PFont font = createFont("arial",20);
   
   P5.addTextfield("input")
     .setPosition(width/2-50,height/2-20)
     .setColorBackground(color(50)) 
     .setFont(font)
     .setSize(100,40)
     .setFocus(true)
     .setColor(color(255))
     ;
  
}
