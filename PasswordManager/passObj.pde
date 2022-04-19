class passObj{
  
  String place;
  String user;
  String pass;
  
  passObj(String Place, String User, String Pass){
    place = Place;
    user = User;
    pass = Pass;
    
  }
  
 
  
  void show(float y, int i){
    PFont font = createFont("arial", 15);   
    
    textAlign(CENTER);
    textFont(font);
    println(place+ " " + user + " " + pass);
    text(place+ " " + user + " " + pass,200,y);
    
    P5.addButton("user"+i)
    .setPosition(width-200, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Copy username")
    .hide()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
    
    P5.addButton("pass"+i)
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Copy password")
    .hide()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
    
    P5.addButton("slet"+i)
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Delete password")
    .hide()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
  }
  
  String getUser(){
    
    return user;
  }
  
   String getPass(){
    
    return pass;
  }
  

}
