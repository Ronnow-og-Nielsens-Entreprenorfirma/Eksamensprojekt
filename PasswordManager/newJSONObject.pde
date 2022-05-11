// Kaldes når der skal oprettes et nyt password
void newJSONObject() {
  // Tegner input skærmen
  String[] inputNames = {"Enter place", "Enter username", "Enter password"};
  background(0);
  Newpass.hide();
  Input.show();
  Header.show();
  Input.setFocus(true);
  Header.setText(inputNames[n]);
  Header.setPosition(width/2-175, height/10);

  // Tjekker om inputet er nyt inden den gemmer det
  if (input != temp) {
    inputs[n] = input; // Hvis det er nyt gememr den det
    n++;
    input = temp; // Opdatere havd det seneste input er
    if (n < 3) {
      Header.setText(inputNames[n]); // Skifter navn på inputbox
    }
  }

  // Hvis programmet har modtaget alle de inputs der skal til for at gemme et nyt password
  if (n > 2) {
    enCode(); // Kalder enCode funktion som kryptere dataen
    user = new JSONObject(); // Laver et nyt JSONObject

    // Ligger input dataen ned i JSONObjektet
    user.setString("place", inputs[0]);
    user.setString("name", inputs[1]);
    user.setString("passWord", inputs[2]);

    // Gemmer det nye JSONObject
    users.setJSONObject(users.size(), user);
    saveJSONArray(users, "ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");

    // Gemmer det nye input i userData arraylisten for at kunne tegne det på skærmen
    String p = deCode(inputs[0]);
    String u = deCode(inputs[1]);
    String k = deCode(inputs[2]);
    float y = 0;
    if (userData.size() == 0) y = 150;
    else if (userData.size() > 0) {
      passObj cord = userData.get(userData.size()-1);
      y = cord.yPos();
    }
    y += 50;
    userData.add(new passObj(p, u, k, y));

    // Nulstiller input skærm og går tilbage til hjemmeskærm
    Input.hide();
    Newpass.show();
    boInput = false;
    Logout.show();
    inputs = new String[3];
    Logout.show();
    n = 0;
  }
} // newJSONObject() end
