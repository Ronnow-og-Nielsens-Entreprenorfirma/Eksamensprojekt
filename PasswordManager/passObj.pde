class passObj{
  
  String place;
  String user;
  String pass;
  
  passObj(String Place, String User, String Pass){
    place = Place;
    user = User;
    pass = Pass;
    
    PFont font = createFont("arial", 15);   
    
    
    P5.addButton("user"+i)
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Copy username")
    .show()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
    
    P5.addButton("pass"+i)
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Copy password")
    .show()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
    
    P5.addButton("slet"+i)
    .setPosition(width-100, 0)
    .setFont(font)
    .setSize(100, 40)
    .setLabel("Delete password")
    .show()
    .setColorBackground(color(100,0,0))
    .setColorForeground(color(50,0,0)) 
    ;
  }
  
 
  
  void show(){
    
  }
  
  String getUser(){
    
    return user;
  }
  
   String getPass(){
    
    return pass;
  }
  

}
