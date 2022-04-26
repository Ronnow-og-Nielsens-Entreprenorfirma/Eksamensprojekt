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
    rect(x+315, y, 50, 25);
    rect(x+400, y, 75, 25);
    rect(x+600, y, 75, 25);
    fill(255);
    text("Place: " + place, x, y);
    text("Username: " + user, x+150, y);
    text("Password: " + pass, x+400, y);
    
    
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
