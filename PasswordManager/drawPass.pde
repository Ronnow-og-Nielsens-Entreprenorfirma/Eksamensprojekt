void drawPass() {
  fill(255);
  rect(200,200, 200, 200);
  
  String text;
  
  
  deCode(text);
  
  myLabel = P5.addTextlabel("label")
               .setText("hej")
               .setPosition(100,50)
               .setColorValue(255)
               .setFont(createFont("arial",20))
               ;
  
}
