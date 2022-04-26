class passObj{
  
  String place;
  String user;
  String pass;
  int x = 50;
  float y;
  
  
  passObj(String Place, String User, String Pass, float yCord){
    place = Place;
    user = User;
    pass = Pass;
    y = yCord;
  }
  
 
  
  void show(){  
    rectMode(CENTER);
    textSize(20);
    fill(#989898);
    rect(x+620, y-5, 50, 25);
    rect(x+1020, y-5, 50, 25);
    rect(x+1120, y-5, 50, 25);
    fill(255);
    text("Place: " + place, x, y);
    text(" | Username: " + user, x+275, y);
    text(" | Password: " + pass, x+650, y);
    text("copy", x+600, y);
    text("copy", x+1000, y);
    text("delet", x+1100, y);
    
    
  }
  
  String getUser(){
    
    return user;
  }
  
   String getPass(){
    
    return pass;
  }
  
  float getYCord() {
    
    return y;
  }

}
