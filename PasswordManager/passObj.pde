class passObj{
  
  String place;
  String user;
  String pass;
  int x = 100;
  float y;
  
  
  passObj(String Place, String User, String Pass, float yCord){
    place = Place;
    user = User;
    pass = Pass;
    y = yCord;
  }
  
 
  
  void show(){  
    
    rect(x+200, y, 200, 100);
    rect(x+400, y, 200, 100);
    rect(x+600, y, 200, 100);
    text(place + " " + user + "     Copy          " + pass + "       Copy        Delete ", x, y);
    
    
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
