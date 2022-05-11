// passObj er det objekt som gemmer alt data for at tegne passwords på skærmen 
class passObj {

  // Diverse variabler
  String place;
  String user;
  String pass;
  int x = 50;
  float y;

  // Håndtere det data der kommer når et nyt objekt bliver lavet
  passObj(String Place, String User, String Pass, float yCord) {
    place = Place;
    user = User;
    pass = Pass;
    y = yCord;
  } // passobj() end

  // Tegner password på skærm samt de knapper der skal til
  void show() {  
    rectMode(CENTER);
    textSize(20);
    fill(#989898);
    rect(x+620, y-5, 50, 25);
    rect(x+1020, y-5, 50, 25);
    fill(200, 0, 0);
    rect(x+1120, y-5, 70, 25);
    fill(255);
    text("Place: " + place, x, y);
    text(" | Username: " + user, x+275, y);
    text(" | Password: " + pass, x+650, y);
    text("copy", x+600, y);
    text("copy", x+1000, y);
    text("delete", x+1095, y);
  } // show() end

  // Getters og setters
  String getUser() {

    return user;
  }

  String getPass() {

    return pass;
  }

  float yPos() {

    return y;
  }
} // passObj{} end
