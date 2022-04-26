void newJSONObject() {
  String[] inputNames = {"Enter place", "Enter username", "Enter password"};
  Newpass.hide();
  Input.show();
  Header.show();
  Input.setFocus(true);
  Header.setText(inputNames[n]);
  Header.setPosition(width/2-175, height/10);

  if (input != temp) {
    inputs[n] = input;
    n++;
    input = temp;
    if (n < 3) {
      Header.setText(inputNames[n]);
    }
  }

  if (n > 2) {
    enCode();
    user = new JSONObject();

    user.setString("place", inputs[0]);
    user.setString("name", inputs[1]);
    user.setString("passWord", inputs[2]);

    users.setJSONObject(users.size(), user);
    saveJSONArray(users, "ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
    
    String p = deCode(inputs[0]);
    String u = deCode(inputs[1]);
    String k = deCode(inputs[2]);
    passObj cord = userData.get(userData.size()-1);
    float y = cord.getYCord();
    y += 50;
    userData.add(new passObj(p, u, k, y));

    Input.hide();
    Newpass.show();
    boInput = false;
    Logout.show();
    inputs = new String[3];
    Logout.show();
    n = 0;
  }
}
